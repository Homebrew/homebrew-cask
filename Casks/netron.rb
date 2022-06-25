cask "netron" do
  version "5.8.9"
  sha256 "74917ebe9aa9c91b1ade697c2ac03707dd4c23ea4c2490d070fad2998734bf0b"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
