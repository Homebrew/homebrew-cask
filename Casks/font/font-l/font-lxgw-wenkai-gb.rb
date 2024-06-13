cask "font-lxgw-wenkai-gb" do
  version "1.330"
  sha256 "4b842c2a12e6017f0e4495a12a364aefe1dd091edd8533c61a8518a8d1a2ffff"

  url "https://github.com/lxgw/LxgwWenkaiGB/releases/download/v#{version}/lxgw-wenkai-gb-v#{version}.zip"
  name "LXGW WenKai GB"
  name "霞鹜文楷 GB"
  homepage "https://github.com/lxgw/LxgwWenkaiGB"

  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiMonoGB-Bold.ttf"
  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiMonoGB-Light.ttf"
  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiMonoGB-Regular.ttf"
  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiGB-Bold.ttf"
  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiGB-Light.ttf"
  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiGB-Regular.ttf"

  # No zap stanza required
end
