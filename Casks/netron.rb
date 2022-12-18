cask "netron" do
  version "6.2.9"
  sha256 "202e27cd5ad3fa302eaae29820db9fe37931fc56bfa63b4a0a8bcf6f90ef37bb"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
