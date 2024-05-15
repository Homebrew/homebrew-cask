cask "font-tex-gyre-pagella-math" do
  version "1.632"
  sha256 "68a9c0ce195915334673960b13a281f24d31a8ae380454a0e35652dba506d474"

  url "https://www.gust.org.pl/projects/e-foundry/tg-math/download/texgyrepagella-math-#{version.no_dots}.zip"
  name "Pagella Math"
  homepage "https://www.gust.org.pl/projects/e-foundry/tg-math"

  livecheck do
    url "https://www.gust.org.pl/projects/e-foundry/tg-math/download"
    regex(/Pagella\sMath\s\(OTF\),\sversion\s(\d+(?:\.\d+)+)/i)
  end

  font "texgyrepagella-math-#{version.no_dots}/opentype/texgyrepagella-math.otf"

  # No zap stanza required
end
