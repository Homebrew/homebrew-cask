cask "font-paper-mono" do
  version "0.320"
  sha256 "fd250b2a6e0f96da3bbc7654fddf288fd0cb48bd5d81712c88403826efc65e53"

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
