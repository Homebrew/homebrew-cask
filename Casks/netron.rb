cask "netron" do
  version "6.4.8"
  sha256 "ee673834a7f1db8578465c12cd9001dc4be9b633a9fad2d6e62c3c9770c95f40"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
