cask "netron" do
  version "6.4.5"
  sha256 "29f9b70f38a6891d27177440d060cb4fc1b2cd631e65bfe95ca96c3e0b9b7947"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
