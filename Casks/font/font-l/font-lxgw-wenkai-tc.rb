cask "font-lxgw-wenkai-tc" do
  version "1.520"
  sha256 "95e734c880016a928d00cd0dc4b20f7874ed4a52d972749cfa354c6a616c3334"

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
