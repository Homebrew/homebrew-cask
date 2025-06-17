cask "font-lxgw-wenkai-gb-lite" do
  version "1.520"
  sha256 "f8ffa21276a909d9033a24fcbd478cfcbd5fe6400329952298f55ef213c44f6e"

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
