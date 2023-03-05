cask "netron" do
  version "6.6.8"
  sha256 "ab9c610b7234b712cc59df27839cb4a9df5a069390dc9c321fc4aa4e80380671"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
