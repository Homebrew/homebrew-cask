cask "netron" do
  version "6.5.1"
  sha256 "79f1449385c6d47948a5c951e57377a468f259e5bcf267a31cbdfc6261a727be"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
