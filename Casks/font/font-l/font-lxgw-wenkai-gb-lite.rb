cask "font-lxgw-wenkai-gb-lite" do
  version "1.530"
  sha256 "36d5275d25e098ea3bedc9de0f5c400e3db29f73e3ed4a7b5a121e0b5cf01820"

  url "https://github.com/lxgw/LxgwWenkaiGB-Lite/releases/download/v#{version}/lxgw-wenkai-gb-lite-v#{version}.zip"
  name "LXGW WenKai GB Lite"
  name "霞鹜文楷 GB 轻便版"
  homepage "https://github.com/lxgw/LxgwWenkaiGB-Lite"

  livecheck do
    url :url
    strategy :github_releases
  end

  font "lxgw-wenkai-gb-lite-v#{version}/LXGWWenKaiGBLite-Light.ttf"
  font "lxgw-wenkai-gb-lite-v#{version}/LXGWWenKaiGBLite-Medium.ttf"
  font "lxgw-wenkai-gb-lite-v#{version}/LXGWWenKaiGBLite-Regular.ttf"
  font "lxgw-wenkai-gb-lite-v#{version}/LXGWWenKaiMonoGBLite-Light.ttf"
  font "lxgw-wenkai-gb-lite-v#{version}/LXGWWenKaiMonoGBLite-Medium.ttf"
  font "lxgw-wenkai-gb-lite-v#{version}/LXGWWenKaiMonoGBLite-Regular.ttf"

  zap :not_required
end
