cask "font-lxgw-bright-tc" do
  version "5.330"
  sha256 "5a01c41e45b43fc3ca5eb49b147a1103199002895906b8d6436b65226b5257fe"

  url "https://github.com/lxgw/LxgwBright/releases/download/v#{version}/LXGWBrightTC.7z"
  name "LXGW Bright TC"
  homepage "https://github.com/lxgw/LxgwBright"

  font "LXGWBrightTC/LXGWBrightTC-Medium.ttf"
  font "LXGWBrightTC/LXGWBrightTC-MediumItalic.ttf"
  font "LXGWBrightTC/LXGWBrightTC-Regular.ttf"
  font "LXGWBrightTC/LXGWBrightTC-Italic.ttf"
  font "LXGWBrightTC/LXGWBrightTC-SemiLight.ttf"
  font "LXGWBrightTC/LXGWBrightTC-SemiLightItalic.ttf"

  # No zap stanza required
end
