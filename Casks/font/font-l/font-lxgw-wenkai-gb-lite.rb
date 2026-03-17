cask "font-lxgw-wenkai-gb-lite" do
  version "1.522"
  sha256 "8c1e7b998677695dd575f9fb64bdadd85a1d9c881c6419b6bea12bfa15d81e00"

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
