cask "netron" do
  version "5.6.9"
  sha256 "ea72844a51e9468d84c167d18d9193a59f9c1f766e2e2e70030c9ee5c1377239"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
