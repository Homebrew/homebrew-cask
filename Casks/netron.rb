cask "netron" do
  version "6.5.6"
  sha256 "08e7ed1cf1e3b9cd02cf197e58699e85db0d3aae7e4f9d863b6aca96821ba0f4"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
