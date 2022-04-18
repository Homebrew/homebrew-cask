cask "netron" do
  version "5.7.1"
  sha256 "2e6eafdc71e792c35f647aec9218093b55f06bcb49effcf2146f75ff4e87f086"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
