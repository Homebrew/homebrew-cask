cask "netron" do
  version "5.6.2"
  sha256 "70f166913f1cb3ddb550bcaaf4b662c0698b1998d1fc96453039cb70a44bfbf8"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
