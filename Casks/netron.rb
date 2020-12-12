cask "netron" do
  version "4.6.5"
  sha256 "2a1886cc8b5ae1e8a76ba022edf0b9ae77d1e3836a368e83aef7328c26f06621"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
