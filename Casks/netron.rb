cask "netron" do
  version "6.4.7"
  sha256 "87d4ed79adb8c1b23d7da8d1291d01d91c95b69ae0511416ab464b0b7a0b6e8b"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
