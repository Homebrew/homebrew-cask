cask "netron" do
  version "4.5.7"
  sha256 "6e4d39bbc8becf6bc1c5698b00afc1378991e191163e785412127a273e4c6dc6"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
