cask "netron" do
  version "5.6.6"
  sha256 "15d1ec5f2a5d024d40a03f051ac04eca6f9e785b1f6046e52df0a0e1ce105d32"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
