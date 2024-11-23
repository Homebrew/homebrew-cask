cask "font-lxgw-heartserif" do
  version "1.011"
  sha256 "c31ad15b1b3eee633ff74ac3d7b6440a73be7286a508ad190ffbb54b3cd61c31"

  url "https://github.com/lxgw/LxgwHeartSerif/releases/download/v#{version}/LXGWHeartSerif.ttf"
  name "LXGW Heart Serif"
  name "霞鹜铭心宋"
  homepage "https://github.com/lxgw/LxgwHeartSerif"

  deprecate! date: "2024-11-22", because: :discontinued

  font "LXGWHeartSerif.ttf"

  # No zap stanza required
end
