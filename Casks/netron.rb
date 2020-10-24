cask "netron" do
  version "4.5.8"
  sha256 "0fb25743be898c3f5c58194771b7e872d9f6602a1e9345ae80b5a5f4d6133448"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
