cask "font-lxgw-bright-gb" do
  version "5.500"
  sha256 "8083e54f6e0576191738c3c7cb8e56a05594bf788feb870d5aed6e2a9214fdd0"

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
