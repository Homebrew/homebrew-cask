cask "font-lxgw-bright-gb" do
  version "5.527"
  sha256 "7e3a742824da8d76fc4a805e53651cb8fbf8fce899081efd15d21cf8247ef678"

  url "https://github.com/lxgw/LxgwBright/releases/download/v#{version}/LXGWBrightGB.7z"
  name "LXGW Bright GB"
  homepage "https://github.com/lxgw/LxgwBright"

  font "LXGWBrightGB/LXGWBrightGB-Italic.ttf"
  font "LXGWBrightGB/LXGWBrightGB-Light.ttf"
  font "LXGWBrightGB/LXGWBrightGB-LightItalic.ttf"
  font "LXGWBrightGB/LXGWBrightGB-Medium.ttf"
  font "LXGWBrightGB/LXGWBrightGB-MediumItalic.ttf"
  font "LXGWBrightGB/LXGWBrightGB-Regular.ttf"

  # No zap stanza required
end
