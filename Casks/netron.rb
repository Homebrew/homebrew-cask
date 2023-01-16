cask "netron" do
  version "6.4.3"
  sha256 "7c15fc23faf3f472e08f4d63e988e06b015521914f1625a16512dae8659be031"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
