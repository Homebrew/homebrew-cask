cask "netron" do
  version "6.5.8"
  sha256 "d2a1956f0dc4f56476e6e02974844ca1a9434c120ec903ff8bf75961cbd44052"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
