cask "netron" do
  version "6.3.2"
  sha256 "e70aef750c039e9e0df9cf7de64193b0659f7a7680b5503d5329d6de8afd1ff6"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
