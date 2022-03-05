cask "netron" do
  version "5.6.1"
  sha256 "4590c6a7318f05a6b7d2c470b7569106d592233e1171ea2ddbba4596f1b8e9ee"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
