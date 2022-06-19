cask "netron" do
  version "5.8.8"
  sha256 "3547aba42861b639413ed862faa099a37faf85e6c4e99cc0a6bacf7a71bbd700"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
