cask "netron" do
  version "6.0.1"
  sha256 "e5a3d2ce02cd87f2a86359b5011c00769daa080333c82945918dc25975e92796"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
