cask "font-lxgw-wenkai-gb-lite" do
  version "1.521"
  sha256 "0c9de97b1e00dc78d71dcb427403f2176ae8aff19828dd2fe71a41e8db8e5eef"

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

  # No zap stanza required
end
