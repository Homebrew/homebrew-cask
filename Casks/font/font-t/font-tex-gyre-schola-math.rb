cask "font-tex-gyre-schola-math" do
  version "1.533"
  sha256 "53560861144138e25f89f1f487126d21c81c5086364ffcf2c8e5e46e37ebbe00"

  url "https://www.gust.org.pl/projects/e-foundry/tg-math/download/texgyreschola-math-#{version.no_dots}.zip"
  name "Schola Math"
  homepage "https://www.gust.org.pl/projects/e-foundry/tg-math"

  livecheck do
    url "https://www.gust.org.pl/projects/e-foundry/tg-math/download"
    regex(/Schola\sMath\s\(OTF\),\sversion\s(\d+(?:\.\d+)+)/i)
  end

  font "texgyreschola-math-#{version.no_dots}/opentype/texgyreschola-math.otf"

  # No zap stanza required
end
