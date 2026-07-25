cask "font-lxgw-bright-gb" do
  version "5.528"
  sha256 "c0b23b1338b06166b8f4ba9b3319b0dc49fc0ca25603fe8ea1f4b8cd6f7bed9a"

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
