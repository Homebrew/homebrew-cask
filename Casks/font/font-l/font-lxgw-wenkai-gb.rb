cask "font-lxgw-wenkai-gb" do
  version "1.530"
  sha256 "2a77f791d7463040b73ea476582b03574755c88f792c39f8cccac7407aa2a827"

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

  zap :not_required
end
