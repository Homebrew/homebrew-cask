cask "font-lxgw-wenkai-lite" do
  version "1.511"
  sha256 "c2fea95cd1caac10d9c088654c9ce6186222faa4a79ab19b38f440c042426477"

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
