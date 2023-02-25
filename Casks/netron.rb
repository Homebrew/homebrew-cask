cask "netron" do
  version "6.6.0"
  sha256 "65fecacca66ded77b4ec1ad730dfae33ee8330f2a07885a78c2fb4b3dde48a76"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
