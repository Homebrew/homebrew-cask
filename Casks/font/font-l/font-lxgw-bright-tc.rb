cask "font-lxgw-bright-tc" do
  version "5.517"
  sha256 "43ed03a42f2ca8004fa6c4647e1f85a9f08380f58365b185852f14d3d2f81651"

  url "https://github.com/lxgw/LxgwBright/releases/download/v#{version}/LXGWBrightTC.7z"
  name "LXGW Bright TC"
  homepage "https://github.com/lxgw/LxgwBright"

  no_autobump! because: :requires_manual_review

  font "LXGWBrightTC/LXGWBrightTC-Italic.ttf"
  font "LXGWBrightTC/LXGWBrightTC-Light.ttf"
  font "LXGWBrightTC/LXGWBrightTC-LightItalic.ttf"
  font "LXGWBrightTC/LXGWBrightTC-Medium.ttf"
  font "LXGWBrightTC/LXGWBrightTC-MediumItalic.ttf"
  font "LXGWBrightTC/LXGWBrightTC-Regular.ttf"

  # No zap stanza required
end
