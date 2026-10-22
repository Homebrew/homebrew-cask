cask "font-lxgw-bright-gb" do
  version "26.10.22"
  sha256 "3775defd86a0bbc832dc68e9fee2a0e2ebb010ea83721db96ab0fdcfd03359f0"

  url "https://github.com/lxgw/LxgwBright/releases/download/#{version}/LXGWBrightGB.7z"
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
