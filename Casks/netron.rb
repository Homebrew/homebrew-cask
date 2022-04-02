cask "netron" do
  version "5.6.7"
  sha256 "2d25a9c0e876b4bc9ec4e997e2f22a909ea1c87c042ab41f67a2d14178983dc6"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
