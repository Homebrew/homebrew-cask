cask "netron" do
  version "6.3.4"
  sha256 "7fb600e485f4f08311573a3d62d094e5f75b02f72ce9bb853a2d536227d97466"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
