cask "netron" do
  version "4.6.8"
  sha256 "3cca8a1d7000128be09607f1c990f266d9923fe7ecd20986ace58d0aa977ebe4"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
