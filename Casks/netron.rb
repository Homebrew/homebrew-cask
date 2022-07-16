cask "netron" do
  version "5.9.3"
  sha256 "6c27a24e7ec4f8d3ac1e18d634df78a8e6b35120c1a4ed23953a52ae4ba37110"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
