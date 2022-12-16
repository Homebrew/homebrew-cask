cask "netron" do
  version "6.2.7"
  sha256 "89f92dbaf6b6e9cb7bdfe8da8d932db1138eb6435365a85794d2c8db78480adb"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
