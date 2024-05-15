cask "font-tex-gyre-chorus" do
  version "2.003"
  sha256 "fbd905a504e6f86df9c38b42c6ed58681a10e6debae6afa6308bc031695cdbd8"

  url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/chorus/qzc#{version}otf.zip"
  name "TeX Gyre Chorus"
  homepage "https://www.gust.org.pl/projects/e-foundry/tex-gyre/chorus"

  livecheck do
    url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/whole"
    regex(%r{Chorus</a>,\sver\.\s(\d+(?:\.\d+)+)}i)
  end

  font "texgyrechorus-mediumitalic.otf"

  # No zap stanza required
end
