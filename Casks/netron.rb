cask "netron" do
  version "5.7.3"
  sha256 "b29c8a377f242fc2a6faa6fc6a3d885d1b1ec6ecc7150bb2eeee7a5b3a6203ee"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
