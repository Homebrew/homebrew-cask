cask "netron" do
  version "5.8.6"
  sha256 "5d4abf531f2ffb31c9090417580780b0bcd845fd5f7191d0a25211c27af995b5"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
