cask "netron" do
  version "6.6.9"
  sha256 "5b38644c629eeb499f423e5eb7ee4e8d350162270c5a9910ee346c2683bc0da5"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
