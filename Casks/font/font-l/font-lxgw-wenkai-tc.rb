cask "font-lxgw-wenkai-tc" do
  version "1.500"
  sha256 "a3bf6bd7026abf8f6587618bc671e7d753cabdeadc77f2464deac15f4b741b46"

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
