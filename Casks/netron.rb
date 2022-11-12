cask "netron" do
  version "6.1.7"
  sha256 "a0a523d2541fa082a415791cb6a06773ef8785dec6543e4b5f832ab3f44cb18e"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
