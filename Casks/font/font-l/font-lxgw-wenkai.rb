cask "font-lxgw-wenkai" do
  version "1.510"
  sha256 "5cd83a8bd400163a64ab846aac16744e9f4da62074c63f29497a7113f8f54d3a"

  url "https://github.com/lxgw/LxgwWenKai/releases/download/v#{version}/lxgw-wenkai-v#{version}.zip"
  name "LXGW WenKai"
  name "霞鹜文楷"
  homepage "https://github.com/lxgw/LxgwWenKai"

  font "lxgw-wenkai-v#{version}/LXGWWenKai-Light.ttf"
  font "lxgw-wenkai-v#{version}/LXGWWenKai-Medium.ttf"
  font "lxgw-wenkai-v#{version}/LXGWWenKai-Regular.ttf"
  font "lxgw-wenkai-v#{version}/LXGWWenKaiMono-Light.ttf"
  font "lxgw-wenkai-v#{version}/LXGWWenKaiMono-Medium.ttf"
  font "lxgw-wenkai-v#{version}/LXGWWenKaiMono-Regular.ttf"

  # No zap stanza required
end
