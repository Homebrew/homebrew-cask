cask "font-source-han-serif-sc-vf" do
  version "2.003R"
  sha256 "24980e3fdbdf7cbef800133c9bc8937cb65533ca50f0bd0565115db496f57220"

  url "https://github.com/adobe-fonts/source-han-serif/raw/refs/tags/#{version}/Variable/OTF/SourceHanSerifSC-VF.otf"
  name "Source Han Serif SC VF"
  name "思源宋体 VF"
  homepage "https://github.com/adobe-fonts/source-han-serif"

  font "SourceHanSerifSC-VF.otf"

  # No zap stanza required
end
