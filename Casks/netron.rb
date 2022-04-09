cask "netron" do
  version "5.6.8"
  sha256 "db5dc2fec57278128fc630d4fc570a7245122831f6a1ccbb3a347fccd01e50f4"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
