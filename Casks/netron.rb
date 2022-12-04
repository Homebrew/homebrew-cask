cask "netron" do
  version "6.2.2"
  sha256 "b620cdcac918c63ca304cc195816d7c6d378c50d41a682225a0b383389b45207"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
