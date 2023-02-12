cask "netron" do
  version "6.5.5"
  sha256 "9d5bf0a4f20ac051d5549cf1d68dbf604277a45784e572ba7db13e44a798e3ef"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
