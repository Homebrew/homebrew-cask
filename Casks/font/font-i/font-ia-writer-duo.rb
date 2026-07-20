cask "font-ia-writer-duo" do
  version :latest
  sha256 :no_check

  url "https://github.com/iaolo/iA-Fonts/archive/refs/heads/master.tar.gz"
  name "iA Writer Duo"
  homepage "https://github.com/iaolo/iA-Fonts"

  font "iA-Fonts-master/iA Writer Duo/Static/iAWriterDuoS-Bold.ttf"
  font "iA-Fonts-master/iA Writer Duo/Static/iAWriterDuoS-BoldItalic.ttf"
  font "iA-Fonts-master/iA Writer Duo/Static/iAWriterDuoS-Italic.ttf"
  font "iA-Fonts-master/iA Writer Duo/Static/iAWriterDuoS-Regular.ttf"
  font "iA-Fonts-master/iA Writer Duo/Variable/iAWriterDuoV-Italic.ttf"
  font "iA-Fonts-master/iA Writer Duo/Variable/iAWriterDuoV.ttf"

  # No zap stanza required
end
