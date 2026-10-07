cask "font-paper-mono" do
  version "1.000"
  sha256 "8642652985dc87bf4cfd07c89942899e611c3c774fc25284c0dd4fe86a993a13"

  url "https://github.com/paper-design/paper-mono/releases/download/v#{version}/paper-mono-v#{version}.zip"
  name "Paper Mono"
  homepage "https://github.com/paper-design/paper-mono"

  font "paper-mono-v#{version}/fonts/otf/PaperMono-Bold.otf"
  font "paper-mono-v#{version}/fonts/otf/PaperMono-ExtraBold.otf"
  font "paper-mono-v#{version}/fonts/otf/PaperMono-ExtraLight.otf"
  font "paper-mono-v#{version}/fonts/otf/PaperMono-Light.otf"
  font "paper-mono-v#{version}/fonts/otf/PaperMono-Medium.otf"
  font "paper-mono-v#{version}/fonts/otf/PaperMono-Regular.otf"
  font "paper-mono-v#{version}/fonts/otf/PaperMono-SemiBold.otf"
  font "paper-mono-v#{version}/fonts/otf/PaperMono-Thin.otf"
  font "paper-mono-v#{version}/fonts/variable/PaperMono[wght].ttf"

  # No zap stanza required
end
