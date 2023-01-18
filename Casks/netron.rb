cask "netron" do
  version "6.4.6"
  sha256 "e6423386e8d40d0a81cd15bd9d00e22de660eedbc3e2ea2cac5e1d2add7fb57c"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
