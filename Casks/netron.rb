cask "netron" do
  version "4.6.1"
  sha256 "bfaa5b83fbbc8abe91a8b37b3f43e1f3c58217f37f6dbfad5c02d17ae54bc783"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
