cask "font-lxgw-wenkai-gb" do
  version "1.522"
  sha256 "37982f21c5f70fad0a82ee5a5d0cc0d01b1903196852cd2303083173da04d194"

  url "https://github.com/lxgw/LxgwWenkaiGB/releases/download/v#{version}/lxgw-wenkai-gb-v#{version}.zip"
  name "LXGW WenKai GB"
  name "霞鹜文楷 GB"
  homepage "https://github.com/lxgw/LxgwWenkaiGB"

  livecheck do
    url :url
    strategy :github_releases
  end

  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiGB-Light.ttf"
  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiGB-Medium.ttf"
  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiGB-Regular.ttf"
  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiMonoGB-Light.ttf"
  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiMonoGB-Medium.ttf"
  font "lxgw-wenkai-gb-v#{version}/LXGWWenKaiMonoGB-Regular.ttf"

  # No zap stanza required
end
