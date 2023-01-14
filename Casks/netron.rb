cask "netron" do
  version "6.4.1"
  sha256 "b3406f39cc66fc609b7c1a52b3fe8c388db45819f8ad9b468a2c54eafbe2d34e"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
