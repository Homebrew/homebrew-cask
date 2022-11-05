cask "netron" do
  version "6.1.4"
  sha256 "3859424df9dcb68485fd84193af83d534f24ba4243f52c0b70a0be06d9e21115"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
