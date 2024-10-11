cask "font-lxgw-wenkai-gb" do
  version "1.501"
  sha256 "95daca5834fa71216aa089034f7f15bf305a3f8216d4f9c61120bd7fe0e399aa"

  url "https://github.com/lxgw/LxgwWenkaiGB/releases/download/v#{version}/lxgw-wenkai-gb-v#{version}.zip"
  name "LXGW WenKai GB"
  name "霞鹜文楷 GB"
  homepage "https://github.com/lxgw/LxgwWenkaiGB"

  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiGB-Light.ttf"
  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiGB-Medium.ttf"
  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiGB-Regular.ttf"
  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiMonoGB-Light.ttf"
  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiMonoGB-Medium.ttf"
  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiMonoGB-Regular.ttf"

  # No zap stanza required
end
