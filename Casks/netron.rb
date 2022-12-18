cask "netron" do
  version "6.3.1"
  sha256 "e596279fc1533682311a5a2175c043a8e0dda74f8608867a7918b83c8873ebca"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
