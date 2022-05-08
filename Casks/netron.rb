cask "netron" do
  version "5.7.8"
  sha256 "cc294b889e1f08a129d7d0f45977f5f960eb645f506d92c60313c2d8f290b629"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
