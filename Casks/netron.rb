cask "netron" do
  version "6.1.1"
  sha256 "2edfa056f48873f40f70bf73594d2bc8430a19141f4b4be6b4f24a7f6d226901"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
