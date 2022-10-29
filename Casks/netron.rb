cask "netron" do
  version "6.1.3"
  sha256 "f6dbd808dd0a10a1f00c298987dd4d6ce67da794c089f885fba710e7b4ca96b9"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
