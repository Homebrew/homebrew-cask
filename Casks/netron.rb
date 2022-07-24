cask "netron" do
  version "5.9.6"
  sha256 "bf376d2c7a543ddc790af801e06f5058c82e7e427edc30b402ae25e395ca360a"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
