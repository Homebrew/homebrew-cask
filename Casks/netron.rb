cask "netron" do
  version "5.6.3"
  sha256 "b2b90610195bfe293d75300180b4ea08f8c29512f0abccbbe789876f0637411b"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
