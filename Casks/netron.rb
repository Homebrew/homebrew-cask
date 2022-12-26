cask "netron" do
  version "6.3.6"
  sha256 "b907065bd97d47a9eb94e04e27d059830bab7302711c13f63ad3d23eeb8111bb"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
