cask "netron" do
  version "5.7.9"
  sha256 "ac558c4435462b13ee4183103612f1078951f04f0be3c19ae927da8f0ad476c7"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
