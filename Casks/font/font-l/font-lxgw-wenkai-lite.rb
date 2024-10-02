cask "font-lxgw-wenkai-lite" do
  version "1.500"
  sha256 "8705f7931b75ce33e65079af3756e256a0fbe4b28aa3b74156d339fb51e9c543"

  url "https://github.com/lxgw/LxgwWenKai-Lite/releases/download/v#{version}/lxgw-wenkai-lite-v#{version}.zip"
  name "LXGW WenKai Lite"
  name "霞鹜文楷 轻便版"
  homepage "https://github.com/lxgw/LxgwWenKai-Lite"

  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiLite-Light.ttf"
  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiLite-Medium.ttf"
  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiLite-Regular.ttf"
  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiMonoLite-Light.ttf"
  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiMonoLite-Medium.ttf"
  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiMonoLite-Regular.ttf"

  # No zap stanza required
end
