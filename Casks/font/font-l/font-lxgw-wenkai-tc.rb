cask "font-lxgw-wenkai-tc" do
  version "1.501"
  sha256 "a8137268e22c9854fa19c00ba0436f73cfe771ce49cfc7e092d67b1aaa5ee9d4"

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

  # No zap stanza required
end
