cask "font-delugia-complete" do
  version "2404.23"
  sha256 "875b244bc584e0eff1d1c88ec6bb0a11803a35b1c02b413b00c3fffc1422894e"

  url "https://github.com/adam7/delugia-code/releases/download/v#{version}/delugia-complete.zip"
  name "Delugia Code"
  homepage "https://github.com/adam7/delugia-code"

  no_autobump! because: :requires_manual_review

  font "delugia-complete/DelugiaComplete-Bold.ttf"
  font "delugia-complete/DelugiaComplete-BoldItalic.ttf"
  font "delugia-complete/DelugiaComplete-Italic.ttf"
  font "delugia-complete/DelugiaComplete.ttf"
  font "delugia-complete/DelugiaCompleteLight-Italic.ttf"
  font "delugia-complete/DelugiaCompleteLight.ttf"

  # No zap stanza required
end
