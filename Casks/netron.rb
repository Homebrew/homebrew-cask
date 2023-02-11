cask "netron" do
  version "6.5.4"
  sha256 "9272ae1a5b977897a7105f8b92f73413c98316528410bcc82f3e59c150ec8faa"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
