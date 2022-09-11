cask "netron" do
  version "6.0.5"
  sha256 "54100906a1e7e984fce9647d30dad2edacd22a10db84bc6c6d4e4a43126019e0"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
