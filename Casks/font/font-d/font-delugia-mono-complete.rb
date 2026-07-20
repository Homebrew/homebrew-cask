cask "font-delugia-mono-complete" do
  version "2404.23"
  sha256 "c731d71580731cf15fe1ff6f742c17b1cfa6a41f44f003b699d39c2b10779add"

  url "https://github.com/adam7/delugia-code/releases/download/v#{version}/delugia-mono-complete.zip"
  name "Delugia Code"
  homepage "https://github.com/adam7/delugia-code"

  font "delugia-mono-complete/DelugiaMonoComplete-Bold.ttf"
  font "delugia-mono-complete/DelugiaMonoComplete-BoldItalic.ttf"
  font "delugia-mono-complete/DelugiaMonoComplete-Italic.ttf"
  font "delugia-mono-complete/DelugiaMonoComplete.ttf"
  font "delugia-mono-complete/DelugiaMonoCompleteLight-Italic.ttf"
  font "delugia-mono-complete/DelugiaMonoCompleteLight.ttf"

  # No zap stanza required
end
