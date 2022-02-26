cask "netron" do
  version "5.6.0"
  sha256 "88feba79201c82c1cd2f5a1c0fd05f47d95be47eb2686fe8f181251c079b4a6a"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
