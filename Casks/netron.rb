cask "netron" do
  version "6.2.6"
  sha256 "109014194bf8352c9148f0a940c526c40eadd7444765517d94dd3f20c5a7911e"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
