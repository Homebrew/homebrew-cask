cask "font-ia-writer-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/iaolo/iA-Fonts/archive/refs/heads/master.tar.gz"
  name "iA Writer Mono"
  homepage "https://github.com/iaolo/iA-Fonts"

  font "iA-Fonts-master/iA Writer Mono/Static/iAWriterMonoS-Bold.ttf"
  font "iA-Fonts-master/iA Writer Mono/Static/iAWriterMonoS-BoldItalic.ttf"
  font "iA-Fonts-master/iA Writer Mono/Static/iAWriterMonoS-Italic.ttf"
  font "iA-Fonts-master/iA Writer Mono/Static/iAWriterMonoS-Regular.ttf"
  font "iA-Fonts-master/iA Writer Mono/Variable/iAWriterMonoV-Italic.ttf"
  font "iA-Fonts-master/iA Writer Mono/Variable/iAWriterMonoV.ttf"

  # No zap stanza required
end
