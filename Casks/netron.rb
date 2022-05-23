cask "netron" do
  version "5.8.1"
  sha256 "edaf5a52c38d28957afa4f211213287ddc8cd82ddf4bce9a668d5d7f96aa88c4"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
