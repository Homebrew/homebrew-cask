cask "netron" do
  version "5.9.4"
  sha256 "662dd08542f20864d04e4a11a1b80560e6b3f29d3d8fe07dae82f1b48df2230c"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
