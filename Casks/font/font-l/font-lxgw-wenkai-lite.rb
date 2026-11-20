cask "font-lxgw-wenkai-lite" do
  version "1.530"
  sha256 "7fa084dfdb76f36a40c183dbb50cb5d2f92b2ea26553454988e08c889f8ed5fa"

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

  zap :not_required
end
