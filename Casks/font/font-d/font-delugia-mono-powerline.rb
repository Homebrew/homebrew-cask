cask "font-delugia-mono-powerline" do
  version "2404.23"
  sha256 "c54d926c288238f2b8804fd48570bf8df309d6a98805ba7215de9d87e096b966"

  url "https://github.com/adam7/delugia-code/releases/download/v#{version}/delugia-mono-powerline.zip"
  name "Delugia Code"
  homepage "https://github.com/adam7/delugia-code"

  font "delugia-mono-powerline/DelugiaMonoPL-Bold.ttf"
  font "delugia-mono-powerline/DelugiaMonoPL-BoldItalic.ttf"
  font "delugia-mono-powerline/DelugiaMonoPL-Italic.ttf"
  font "delugia-mono-powerline/DelugiaMonoPL.ttf"
  font "delugia-mono-powerline/DelugiaMonoPLLight-Italic.ttf"
  font "delugia-mono-powerline/DelugiaMonoPLLight.ttf"

  # No zap stanza required
end
