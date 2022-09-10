cask "netron" do
  version "6.0.4"
  sha256 "fda07a6ea2fae66611873dfe9b10f902b08943c017a3fca717af4c15cf6edd22"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
