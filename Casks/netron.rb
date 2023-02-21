cask "netron" do
  version "6.5.9"
  sha256 "6500ca788935f0ff14f63487f3d3022704ec2a97cd1a7c01f0b7aa5297d3fb98"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
