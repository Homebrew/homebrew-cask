cask "font-lxgw-wenkai-lite" do
  version "1.520"
  sha256 "ce5da3f1794f357ba49e83ae5278e86ba07e615e539c23ac4c695c97e2d67342"

  url "https://github.com/lxgw/LxgwWenKai-Lite/releases/download/v#{version}/lxgw-wenkai-lite-v#{version}.zip"
  name "LXGW WenKai Lite"
  name "霞鹜文楷 轻便版"
  homepage "https://github.com/lxgw/LxgwWenKai-Lite"

  no_autobump! because: :requires_manual_review

  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiLite-Light.ttf"
  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiLite-Medium.ttf"
  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiLite-Regular.ttf"
  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiMonoLite-Light.ttf"
  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiMonoLite-Medium.ttf"
  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiMonoLite-Regular.ttf"

  # No zap stanza required
end
