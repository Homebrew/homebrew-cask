cask "netron" do
  version "6.3.9"
  sha256 "793442e46ea55ce5e08e8c3208d061a479577183e63e81a26c478375a7d90ae3"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
