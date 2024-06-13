cask "font-lxgw-wenkai-tc" do
  version "1.330"
  sha256 "cbccbb37676487c3fddafb7da190bfab30e26ae57049478a3e474123d2cc47a3"

  url "https://github.com/lxgw/LxgwWenkaiTC/releases/download/v#{version}/lxgw-wenkai-tc-v#{version}.zip"
  name "LXGW WenKai TC"
  name "霞鶩文楷 TC"
  homepage "https://github.com/lxgw/LxgwWenkaiTC"

  font "lxgw-wenkai-tc-v#{version}/LXGWWenKaiMonoTC-Bold.ttf"
  font "lxgw-wenkai-tc-v#{version}/LXGWWenKaiMonoTC-Light.ttf"
  font "lxgw-wenkai-tc-v#{version}/LXGWWenKaiMonoTC-Regular.ttf"
  font "lxgw-wenkai-tc-v#{version}/LXGWWenKaiTC-Bold.ttf"
  font "lxgw-wenkai-tc-v#{version}/LXGWWenKaiTC-Light.ttf"
  font "lxgw-wenkai-tc-v#{version}/LXGWWenKaiTC-Regular.ttf"

  # No zap stanza required
end
