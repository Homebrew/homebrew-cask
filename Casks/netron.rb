cask "netron" do
  version "6.2.5"
  sha256 "8459be0c6cea6b76388bcec53c2896896937fa853fb7ef9ffd53af99f6eb57ab"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
