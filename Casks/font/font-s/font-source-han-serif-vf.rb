cask "font-source-han-serif-vf" do
  version "2.003R"
  sha256 "7cc8506bec282fb58858c201c2d6e1935a52954dfff045daf065f1347ca6a13e"

  url "https://github.com/adobe-fonts/source-han-serif/raw/refs/tags/#{version}/Variable/OTC/SourceHanSerif-VF.otf.ttc"
  name "Source Han Serif VF"
  homepage "https://github.com/adobe-fonts/source-han-serif"

  font "SourceHanSerif-VF.otf.ttc"

  # No zap stanza required
end
