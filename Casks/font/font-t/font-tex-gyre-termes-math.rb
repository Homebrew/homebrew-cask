cask "font-tex-gyre-termes-math" do
  version "1.543"
  sha256 "5875b39d3987cbe4258e5933a2292fbece870177053c5a8f495492769e2d4bb2"

  url "https://www.gust.org.pl/projects/e-foundry/tg-math/download/texgyretermes-math-#{version.no_dots}.zip"
  name "Termes Math"
  homepage "https://www.gust.org.pl/projects/e-foundry/tg-math"

  livecheck do
    url "https://www.gust.org.pl/projects/e-foundry/tg-math/download"
    regex(/Termes\sMath\s\(OTF\),\sversion\s(\d+(?:\.\d+)+)/i)
  end

  font "texgyretermes-math-1543/opentype/texgyretermes-math.otf"

  # No zap stanza required
end
