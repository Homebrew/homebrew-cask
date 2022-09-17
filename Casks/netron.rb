cask "netron" do
  version "6.0.6"
  sha256 "f0dab31061970f78f53959e2446e2f012ec4468992c28020971cd0ac919a185b"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
