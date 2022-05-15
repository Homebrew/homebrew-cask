cask "netron" do
  version "5.8.0"
  sha256 "78bd1ef6324e63603266c31980012c5946755d23603d50f8d83d48c712ed62f7"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
