cask "netron" do
  version "5.9.0"
  sha256 "5d8134522a5a9429633c426058d305604a416dcff7972675f4eff19a29ed71c7"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
