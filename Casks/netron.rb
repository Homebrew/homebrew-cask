cask "netron" do
  version "5.7.0"
  sha256 "4a564052028c4d376bc3055aa28e0982ce754428195c272eff92644b2e9518a1"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
