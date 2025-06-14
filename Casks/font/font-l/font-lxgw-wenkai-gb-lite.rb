cask "font-lxgw-wenkai-gb-lite" do
  version "1.511"
  sha256 "7593950dcb0e75741b9bed81e93791bca3495277dbb06bc23eef1f4e0935bd40"

  url "https://github.com/lxgw/LxgwWenkaiGB-Lite/releases/download/v#{version}/lxgw-wenkai-gb-lite-v#{version}.zip"
  name "LXGW WenKai GB Lite"
  name "霞鹜文楷 GB 轻便版"
  homepage "https://github.com/lxgw/LxgwWenkaiGB-Lite"

  no_autobump! because: :requires_manual_review

  font "lxgw-wenkai-gb-lite-v#{version}/LXGWWenKaiGBLite-Light.ttf"
  font "lxgw-wenkai-gb-lite-v#{version}/LXGWWenKaiGBLite-Medium.ttf"
  font "lxgw-wenkai-gb-lite-v#{version}/LXGWWenKaiGBLite-Regular.ttf"
  font "lxgw-wenkai-gb-lite-v#{version}/LXGWWenKaiMonoGBLite-Light.ttf"
  font "lxgw-wenkai-gb-lite-v#{version}/LXGWWenKaiMonoGBLite-Medium.ttf"
  font "lxgw-wenkai-gb-lite-v#{version}/LXGWWenKaiMonoGBLite-Regular.ttf"

  # No zap stanza required
end
