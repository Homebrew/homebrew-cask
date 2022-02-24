cask "netron" do
  version "5.5.9"
  sha256 "e0ede5d9e22fdf049e91a566806e53f40add53b4c6bbf12282f3c4ddc4d87061"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
