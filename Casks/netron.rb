cask "netron" do
  version "6.0.2"
  sha256 "f7cd9d176f4c571de94226024db0793293b3cd30c545998fb91d91879eb86343"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
