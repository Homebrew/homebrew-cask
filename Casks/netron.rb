cask "netron" do
  version "5.7.2"
  sha256 "bc9e3887c89191659bf7796d6c98e487d25bd5953422f44ca9b291afb8f21135"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
