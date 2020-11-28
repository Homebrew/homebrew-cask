cask "netron" do
  version "4.6.4"
  sha256 "69d2cc308092674fa8b9e4b765730ce2bc0881463a784dfa4bd8f16a254c5716"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
