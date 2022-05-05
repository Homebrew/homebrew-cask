cask "netron" do
  version "5.7.6"
  sha256 "475bc22ec409b27a8f6b17c248b5dac13105784ea2d4727ec5488d66d440e65a"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
