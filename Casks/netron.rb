cask "netron" do
  version "6.6.2"
  sha256 "f2154ae7d12ce0f6345f3d57006ddebfbff125dc958f0886a24d329c80d7fd46"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
