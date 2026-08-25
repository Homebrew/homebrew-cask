cask "font-paper-mono" do
  version "0.300"
  sha256 "969b9d49f4d68ca61d39359be7f04df0c25f391b0a0ae9fd582486fb00ceb529"

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
