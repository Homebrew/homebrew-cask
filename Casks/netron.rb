cask "netron" do
  version "6.4.2"
  sha256 "3b8ed60e88f980f96ea0852bb8c0e5c30639919b53af56180ce3059450c8fb21"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
