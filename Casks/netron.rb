cask "netron" do
  version "5.7.4"
  sha256 "6badda1aeb1274e9f0243fff4a1ca4acdff34a2cf3c38fb6d816a14cc424258e"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
