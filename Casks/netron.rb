cask "netron" do
  version "4.6.9"
  sha256 "fb86472e219ae3099f2c8e975fcc5c8ad7c4a06b893be5cbe61723ee1298909c"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
