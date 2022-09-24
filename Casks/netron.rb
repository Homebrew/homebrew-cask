cask "netron" do
  version "6.0.7"
  sha256 "ef4bed117acce8107987c543d6a187ec7c174a7c966bfbaeda1c9fb6e00b1469"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
