cask "font-source-han-sans-sc-vf" do
  version "2.005R"
  sha256 "e4fb7711890d8237bd2dfbbcf14f2fd26c2c5cedb29a44fcc60bef1447690422"

  url "https://github.com/adobe-fonts/source-han-sans/raw/refs/tags/#{version}/Variable/OTF/SourceHanSansSC-VF.otf"
  name "Source Han Sans SC VF"
  name "思源黑体 SC VF"
  homepage "https://github.com/adobe-fonts/source-han-sans"

  font "SourceHanSansSC-VF.otf"

  # No zap stanza required
end
