cask "font-tex-gyre-bonum" do
  version "2.004"
  sha256 "30e7e9bf24b73709edff9916c95214a66b7fac38f78a11a19e4bc18ab019d398"

  url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/bonum/qbk#{version}otf.zip"
  name "TeX Gyre Bonum"
  homepage "https://www.gust.org.pl/projects/e-foundry/tex-gyre/bonum"

  livecheck do
    url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/whole"
    regex(%r{Bonum</a>,\sver\.\s(\d+(?:\.\d+)+)}i)
  end

  font "texgyrebonum-bold.otf"
  font "texgyrebonum-bolditalic.otf"
  font "texgyrebonum-italic.otf"
  font "texgyrebonum-regular.otf"

  # No zap stanza required
end
