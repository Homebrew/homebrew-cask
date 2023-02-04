cask "netron" do
  version "6.5.2"
  sha256 "77d2cd55cdb0acdfd1c4c33844fd94ea81beb4a6bea5716cb892462a283d607e"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
