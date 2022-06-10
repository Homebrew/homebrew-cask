cask "netron" do
  version "5.8.5"
  sha256 "4b1d0231d17ad8e7d8e29f75dc6148146dfda8752d4333e23fc14865526827e7"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
