cask "netron" do
  version "6.3.5"
  sha256 "63d041066fff11098caba419e0538f948ecd6053b6b557a50dd19d116617f264"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
