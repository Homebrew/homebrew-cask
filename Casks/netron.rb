cask "netron" do
  version "5.8.7"
  sha256 "405cb7bc62ae19ed703f4f186ee5b80b7cca5475e2e587d4c98cbe7f4962a5b5"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
