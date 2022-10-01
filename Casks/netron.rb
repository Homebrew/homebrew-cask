cask "netron" do
  version "6.0.8"
  sha256 "aecda98419528e44facdc234510dbaa4137165231ac3b124fae3166feb5023fa"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
