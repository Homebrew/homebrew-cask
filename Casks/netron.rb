cask "netron" do
  version "6.1.0"
  sha256 "fd9ed1f331974769333142c3b2403fa939e76fde2b97f59cf972f7d16cf7d2b6"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
