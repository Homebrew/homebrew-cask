cask "netron" do
  version "4.7.0"
  sha256 "4922bf8b731f2d2e95c9bb3853b2c7f65b712d1df2dfc1a8a16faa29ac3ba92c"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
