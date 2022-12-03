cask "netron" do
  version "6.2.1"
  sha256 "dcf93949b2a9ee9b4ff21d550279ad0e8b62f13f575d2efd2481de585eb69a8e"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
