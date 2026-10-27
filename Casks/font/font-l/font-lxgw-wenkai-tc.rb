cask "font-lxgw-wenkai-tc" do
  version "1.530"
  sha256 "2b030463c9212d6e31cb19a733537a4688d421d253a7727a1c6ebd19a6e2146a"

  url "https://github.com/lxgw/LxgwWenkaiTC/releases/download/v#{version}/lxgw-wenkai-tc-v#{version}.zip"
  name "LXGW WenKai TC"
  name "霞鶩文楷 TC"
  homepage "https://github.com/lxgw/LxgwWenkaiTC"

  font "lxgw-wenkai-tc-v#{version}/LXGWWenKaiMonoTC-Light.ttf"
  font "lxgw-wenkai-tc-v#{version}/LXGWWenKaiMonoTC-Medium.ttf"
  font "lxgw-wenkai-tc-v#{version}/LXGWWenKaiMonoTC-Regular.ttf"
  font "lxgw-wenkai-tc-v#{version}/LXGWWenKaiTC-Light.ttf"
  font "lxgw-wenkai-tc-v#{version}/LXGWWenKaiTC-Medium.ttf"
  font "lxgw-wenkai-tc-v#{version}/LXGWWenKaiTC-Regular.ttf"

  zap :not_required
end
