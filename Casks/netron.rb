cask "netron" do
  version "6.3.3"
  sha256 "1fa12e8eac9fdd71f1cd0821ae956328e1adca6679fed25701bdbc2ef5027d03"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
