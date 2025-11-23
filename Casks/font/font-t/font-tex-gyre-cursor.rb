cask "font-tex-gyre-cursor" do
  version "2.004"
  sha256 "ae8db1c134ec5c1b8c3999116b0610a5ad1c6f47520c3b4712b9bc914458dce9"

  url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/cursor/qcr#{version}otf.zip"
  name "TeX Gyre Cursor"
  homepage "https://www.gust.org.pl/projects/e-foundry/tex-gyre/cursor"

  livecheck do
    url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/whole"
    regex(%r{Cursor</a>,\sver\.\s(\d+(?:\.\d+)+)}i)
  end

  font "texgyrecursor-bold.otf"
  font "texgyrecursor-bolditalic.otf"
  font "texgyrecursor-italic.otf"
  font "texgyrecursor-regular.otf"

  # No zap stanza required
end
