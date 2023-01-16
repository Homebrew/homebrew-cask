cask "netron" do
  version "6.4.4"
  sha256 "0de7d71f1dae03bd16ad3e478f9c68fb00052f604bf49658afe4124d5bac621d"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
