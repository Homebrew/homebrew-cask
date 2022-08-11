cask "netron" do
  version "6.0.0"
  sha256 "025d06b99d4602529a9f34258cd6debe2428de6d830a3c3677d02f84d6442973"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
