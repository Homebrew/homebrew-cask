cask "netron" do
  version "6.2.3"
  sha256 "8bc23f77cad590a9bf4902f8d3713ad3fa53c6c7f48fcb45517f611c64f46ff8"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
