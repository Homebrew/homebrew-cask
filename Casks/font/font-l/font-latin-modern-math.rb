cask "font-latin-modern-math" do
  version :latest
  sha256 :no_check

  url "https://www.gust.org.pl/projects/e-foundry/lm-math/download/latinmodern-math-1959.zip"
  name "Latin Modern Math"
  homepage "https://www.gust.org.pl/projects/e-foundry/lm-math"

  font "latinmodern-math-1959/otf/latinmodern-math.otf"

  # No zap stanza required
end
