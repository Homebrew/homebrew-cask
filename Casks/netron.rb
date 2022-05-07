cask "netron" do
  version "5.7.7"
  sha256 "47a0853830094edd6674c681dc997b4125af67f232c0d3e9afa301da9087e561"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
