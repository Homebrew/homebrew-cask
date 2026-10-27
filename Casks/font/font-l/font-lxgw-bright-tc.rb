cask "font-lxgw-bright-tc" do
  version "26.10.22"
  sha256 "04ae1a08e14374badfce7e284806153c434152cbe19b524b0c92280a6d953413"

  url "https://github.com/lxgw/LxgwBright/releases/download/#{version}/LXGWBrightTC.7z"
  name "LXGW Bright TC"
  homepage "https://github.com/lxgw/LxgwBright"

  font "LXGWBrightTC/LXGWBrightTC-Italic.ttf"
  font "LXGWBrightTC/LXGWBrightTC-Light.ttf"
  font "LXGWBrightTC/LXGWBrightTC-LightItalic.ttf"
  font "LXGWBrightTC/LXGWBrightTC-Medium.ttf"
  font "LXGWBrightTC/LXGWBrightTC-MediumItalic.ttf"
  font "LXGWBrightTC/LXGWBrightTC-Regular.ttf"

  zap :not_required
end
