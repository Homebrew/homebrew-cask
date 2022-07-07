cask "netron" do
  version "5.9.1"
  sha256 "8bf97f4acd5260efe95194fae638563eaf2a41ee5a7ca531af92af2351412c13"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
