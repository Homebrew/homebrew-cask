cask "netron" do
  version "4.6.2"
  sha256 "9aa162920bbeae7ec9c4fec108477fd8c743a551f48cd2302cd6b1a99bc8b5f0"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
