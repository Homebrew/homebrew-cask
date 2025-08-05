cask "font-tex-gyre-termes" do
  version "2.004"
  sha256 "5d467d8db17c96037b04409d682f071d7cc33cf94eda35a0a0465776a2c862b2"

  url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/termes/qtm#{version}otf.zip"
  name "TeX Gyre Termes"
  homepage "https://www.gust.org.pl/projects/e-foundry/tex-gyre/termes"

  livecheck do
    url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/whole"
    regex(%r{Termes</a>,\sver\.\s(\d+(?:\.\d+)+)}i)
  end

  font "texgyretermes-bold.otf"
  font "texgyretermes-bolditalic.otf"
  font "texgyretermes-italic.otf"
  font "texgyretermes-regular.otf"

  # No zap stanza required
end
