cask "netron" do
  version "6.0.3"
  sha256 "dbe7fbb83e7d48fb6313062de9c896068dab3c5fe076b09a959e766a41132aa7"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
