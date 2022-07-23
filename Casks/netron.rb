cask "netron" do
  version "5.9.5"
  sha256 "25a960519fa4d74ceb300cbe89c9e8a7f3cea29593d9efd229366492b946f325"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
