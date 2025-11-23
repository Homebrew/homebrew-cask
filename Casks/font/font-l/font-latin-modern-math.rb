cask "font-latin-modern-math" do
  version "1.959"
  sha256 "aaaa060b4ffc091461e875efb9498b9abfa7c7a48f38eb33882868839903a4f8"

  url "https://www.gust.org.pl/projects/e-foundry/lm-math/download/latinmodern-math-#{version.no_dots}.zip"
  name "Latin Modern Math"
  homepage "https://www.gust.org.pl/projects/e-foundry/lm-math"

  livecheck do
    url "https://www.gust.org.pl/projects/e-foundry/lm-math/download"
    regex(/version\s+v?(\d+(?:\.\d+)+)/i)
  end

  font "latinmodern-math-#{version.no_dots}/otf/latinmodern-math.otf"

  # No zap stanza required
end
