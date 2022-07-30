cask "netron" do
  version "5.9.7"
  sha256 "4349b55944ef7c9c6e470df734f324c50de95445330686a0d75bcc47d850c4de"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
