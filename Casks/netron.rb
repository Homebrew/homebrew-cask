cask "netron" do
  version "4.5.6"
  sha256 "7aff7bec851f1f8389ed7b9cc7d5e2aad5280121a3ab3d0c55b12552083121f7"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
