cask "font-lxgw-zhenkai" do
  version "0.600"
  sha256 "457955ce330f2945428f92b4621c72d72435cf9028a82ac138283cfe5e1f553f"

  url "https://github.com/lxgw/LxgwZhenKai/releases/download/v#{version}/LXGWZhenKai.ttf"
  name "LXGW ZhenKai"
  name "霞鹜臻楷"
  homepage "https://github.com/lxgw/LxgwZhenKai"

  deprecate! date: "2024-02-18", because: :discontinued

  font "LXGWZhenKai.ttf"

  # No zap stanza required
end
