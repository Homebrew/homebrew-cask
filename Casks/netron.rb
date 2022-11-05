cask "netron" do
  version "6.1.5"
  sha256 "e3b62439d5a07abb283a47e0dc7a2302b35079be41958550677e91a044aa734e"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
