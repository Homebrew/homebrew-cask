cask "font-lxgw-bright-tc" do
  version "5.500"
  sha256 "e4fd51465429a122f0a4f92317914ec54483543769678ffa59ef8f55a1fb9d90"

  url "https://github.com/lxgw/LxgwBright/releases/download/v#{version}/LXGWBrightTC.7z"
  name "LXGW Bright TC"
  homepage "https://github.com/lxgw/LxgwBright"

  font "LXGWBrightTC/LXGWBrightTC-Italic.ttf"
  font "LXGWBrightTC/LXGWBrightTC-Light.ttf"
  font "LXGWBrightTC/LXGWBrightTC-LightItalic.ttf"
  font "LXGWBrightTC/LXGWBrightTC-Medium.ttf"
  font "LXGWBrightTC/LXGWBrightTC-MediumItalic.ttf"
  font "LXGWBrightTC/LXGWBrightTC-Regular.ttf"

  # No zap stanza required
end
