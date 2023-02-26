cask "netron" do
  version "6.6.1"
  sha256 "8c93031dbe3cc5c11056d8ddfc8541666f8312e69b65da77da1f956947d9fc9f"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
