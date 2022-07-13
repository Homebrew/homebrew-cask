cask "netron" do
  version "5.9.2"
  sha256 "7bbc4378811b6bb8c6d8db449aef6d91bb1b7f87671daa175a7690a59e4693fc"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
