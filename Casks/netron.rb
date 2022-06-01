cask "netron" do
  version "5.8.2"
  sha256 "425d6da08d15786495aef9a896a428f2e9c04a3759229523e7bdcbda300f3db9"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
