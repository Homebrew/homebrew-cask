cask "netron" do
  version "5.4.3"
  sha256 "e566c5f1cea04255d5a0b1cbf9ddcf42fdbf0016a00a60b5dd73e4d9a5cff60f"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  livecheck do
    url :url
    strategy :git
    regex(/^v(\d+(?:\.\d+)+)$/)
  end

  auto_updates true

  app "Netron.app"
end
