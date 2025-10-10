cask "font-lxgw-bright-tc" do
  version "5.527"
  sha256 "4112c0d503614639364e102136963063898e52bee9029dcf03f67f565ef6ce7a"

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
