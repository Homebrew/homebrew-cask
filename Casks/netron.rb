cask "netron" do
  version "6.3.8"
  sha256 "9480b08f973fe3aaf65ec23bbc3ab5ed73404701ec9398bb21617a613458805e"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
