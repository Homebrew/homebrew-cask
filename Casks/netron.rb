cask "netron" do
  version "6.5.3"
  sha256 "3a0ad8a770a25058c825d0ee03d657898aec1714ba3ebfd5ed03bacf59341793"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
