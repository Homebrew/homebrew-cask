cask "netron" do
  version "6.3.0"
  sha256 "71ee51223f4273cbd69e4e38408d562de3db499c62ddf5ab69db97f53d30f1a1"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
