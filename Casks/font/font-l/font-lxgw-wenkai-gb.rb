cask "font-lxgw-wenkai-gb" do
  version "1.500"
  sha256 "36440525c599fa4134ec247d0f9814db622336b943a1fbad2c2785b3125605c0"

  url "https://github.com/lxgw/LxgwWenkaiGB/releases/download/v#{version}/lxgw-wenkai-gb-v#{version}.zip"
  name "LXGW WenKai GB"
  name "霞鹜文楷 GB"
  homepage "https://github.com/lxgw/LxgwWenkaiGB"

  font "lxgw-wenkai-gb-v1.500/LXGWWenKaiGB-Light.ttf"
  font "lxgw-wenkai-gb-v1.500/LXGWWenKaiGB-Medium.ttf"
  font "lxgw-wenkai-gb-v1.500/LXGWWenKaiGB-Regular.ttf"
  font "lxgw-wenkai-gb-v1.500/LXGWWenKaiMonoGB-Light.ttf"
  font "lxgw-wenkai-gb-v1.500/LXGWWenKaiMonoGB-Medium.ttf"
  font "lxgw-wenkai-gb-v1.500/LXGWWenKaiMonoGB-Regular.ttf"

  # No zap stanza required
end
