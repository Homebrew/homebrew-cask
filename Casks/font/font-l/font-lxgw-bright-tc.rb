cask "font-lxgw-bright-tc" do
  version "5.528"
  sha256 "8e484d1a9d857bcad4f187ec619d34019b4df80e14f3eb9ffff157ab54aa6549"

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
