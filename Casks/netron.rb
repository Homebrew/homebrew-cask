cask "netron" do
  version "5.9.8"
  sha256 "79120c63ca8dc0464964fc647c2a3fedf1258d94a61ca0af7483a70cd262f5c5"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
