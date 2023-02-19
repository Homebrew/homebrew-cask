cask "netron" do
  version "6.5.7"
  sha256 "560e84233ce41fdfe4a239023a6bf6f7fd3587df8069a1e764d024e52d76079d"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
