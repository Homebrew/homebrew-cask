cask "netron" do
  version "5.7.5"
  sha256 "496892ebd3e17a703c60a2945ec221242d673159761a456da4eb4caa8ad9ca2f"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
