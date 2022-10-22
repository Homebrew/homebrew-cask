cask "netron" do
  version "6.1.2"
  sha256 "18883a7b5146247e6118abd1891310df34642c950308df76155944f907e084b1"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
