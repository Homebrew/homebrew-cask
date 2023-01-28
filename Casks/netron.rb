cask "netron" do
  version "6.5.0"
  sha256 "89359548beb36b0195aea248723c88f68f534be658c7a7c8d8c714e727c32a4e"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
