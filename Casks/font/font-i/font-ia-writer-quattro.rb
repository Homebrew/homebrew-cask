cask "font-ia-writer-quattro" do
  version :latest
  sha256 :no_check

  url "https://github.com/iaolo/iA-Fonts/archive/refs/heads/master.tar.gz"
  name "iA Writer Quattro"
  homepage "https://github.com/iaolo/iA-Fonts"

  font "iA-Fonts-master/iA Writer Quattro/Static/iAWriterQuattroS-Bold.ttf"
  font "iA-Fonts-master/iA Writer Quattro/Static/iAWriterQuattroS-BoldItalic.ttf"
  font "iA-Fonts-master/iA Writer Quattro/Static/iAWriterQuattroS-Italic.ttf"
  font "iA-Fonts-master/iA Writer Quattro/Static/iAWriterQuattroS-Regular.ttf"
  font "iA-Fonts-master/iA Writer Quattro/Variable/iAWriterQuattroV-Italic.ttf"
  font "iA-Fonts-master/iA Writer Quattro/Variable/iAWriterQuattroV.ttf"

  # No zap stanza required
end
