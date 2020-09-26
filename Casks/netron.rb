cask "netron" do
  version "4.5.3"
  sha256 "bcb9047ca0e0db10bb534cd716430e2f51f16bbe0e7b8c8fb51c328b9ba7bfb6"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
