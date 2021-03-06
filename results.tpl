{# This is the template for results from statistical claims #}
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Statistical claims found</title>
<style>
body {
  font-family: sans-serif;
  background-color: #ddd;
  margin: 0;
}
#container {
  max-width: 1000px;
  margin: 0 auto; /* Centred */
  padding: 10px;
  background-color: #fff;
}
h3 {
  font-size: 1.3em;
  margin-bottom: -5px;
}
.highlight {
  background-color: #ff0;
}
</style>
<script>
function toggle_hidden(id) {
  el = document.getElementById(id);
  el.classList.toggle('hidden');
  return false;
}
</script>
</head>
<body>
<div id="container">
{% for debate, batch in debates %}
  <div class="debate">
    <h2>{{debate}}</h2>
    {% for speech in batch %}
    <div class="speech">
      <h3>{{speech.speaker}}</h3>
      {% for before, match, after in speech.snippets %}
        <p class="match">
          {{before}}<span class="highlight">{{match}}</span>{{after}}
        </p>
      {% endfor %}
    </div>
    {% endfor %}
  </div>
{% endfor %}
</div>
</body>
</html>
