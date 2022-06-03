cask "netron" do
  version "5.8.4"
  sha256 "e3b74f1061d09dd9d5bea927f573985ad023da6bf3c08fe7fee300a6ad171a05"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
