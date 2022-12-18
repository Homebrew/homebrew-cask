cask "netron" do
  version "6.2.8"
  sha256 "159a25612eddee8062c4e2369983f36fd8b3c002549f4d026335d3446feed631"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
