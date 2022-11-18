cask "netron" do
  version "6.1.8"
  sha256 "25f3ac0b699f7a4bde6a7a32d0f8bb84bb851ae40750e54fe521e244a2f593e9"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
