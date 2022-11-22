cask "netron" do
  version "6.1.9"
  sha256 "23566222ab208f6c5ee504989893893d0fb2ceb4deeaa14e47352eae8a62690b"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
