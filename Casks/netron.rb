cask "netron" do
  version "6.2.0"
  sha256 "4f94182a59c24ca06906045751db76e86daf6df178a38bdfb08f5ae85adad906"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
