cask "netron" do
  version "5.6.5"
  sha256 "55000ec1630d044324da7dc0c071177e6a9cad95d7edb8ba120bbc7742796e91"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
