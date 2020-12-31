cask "netron" do
  version "4.6.9"
  sha256 "7c1af72da225e7e4c8594605e34ee1e9480d1ef883aeb7b43305d9d938f5ec28"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
