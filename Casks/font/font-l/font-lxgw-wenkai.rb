cask "font-lxgw-wenkai" do
  version "1.520"
  sha256 "3a763543bec896e3c1badc9808bc804116a5e3d26f9f9592dacc834c9e799d8c"

  url "https://github.com/lxgw/LxgwWenKai/releases/download/v#{version}/lxgw-wenkai-v#{version}.zip"
  name "LXGW WenKai"
  name "霞鹜文楷"
  homepage "https://github.com/lxgw/LxgwWenKai"

  no_autobump! because: :requires_manual_review

  font "lxgw-wenkai-v#{version}/LXGWWenKai-Light.ttf"
  font "lxgw-wenkai-v#{version}/LXGWWenKai-Medium.ttf"
  font "lxgw-wenkai-v#{version}/LXGWWenKai-Regular.ttf"
  font "lxgw-wenkai-v#{version}/LXGWWenKaiMono-Light.ttf"
  font "lxgw-wenkai-v#{version}/LXGWWenKaiMono-Medium.ttf"
  font "lxgw-wenkai-v#{version}/LXGWWenKaiMono-Regular.ttf"

  # No zap stanza required
end
