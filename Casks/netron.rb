cask "netron" do
  version "6.6.7"
  sha256 "f2197ba4bba0522f01f8652d784724275e1d004502e20191282f2a07070f5b8b"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
