cask "font-lxgw-wenkai-lite" do
  version "1.522"
  sha256 "7c86ceeec54f2caa8b674b2a79bd82f4417815ab7c7330f80fede76ee4c9ea0b"

  url "https://github.com/lxgw/LxgwWenKai-Lite/releases/download/v#{version}/lxgw-wenkai-lite-v#{version}.zip"
  name "LXGW WenKai Lite"
  name "霞鹜文楷 轻便版"
  homepage "https://github.com/lxgw/LxgwWenKai-Lite"

  livecheck do
    url :url
    strategy :github_releases
  end

  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiLite-Light.ttf"
  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiLite-Medium.ttf"
  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiLite-Regular.ttf"
  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiMonoLite-Light.ttf"
  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiMonoLite-Medium.ttf"
  font "lxgw-wenkai-lite-v#{version}/LXGWWenKaiMonoLite-Regular.ttf"

  # No zap stanza required
end
