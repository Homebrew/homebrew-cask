cask "netron" do
  version "5.6.4"
  sha256 "645bb6b125c51626e25d989370464aa8dcbe6cd1df8e1c7d1a354d5d53445363"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
