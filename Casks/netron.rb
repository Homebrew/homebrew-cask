cask "netron" do
  version "5.4.6"
  sha256 "9ab07aba3d12ca74327e90e8f88bb32acc7bb81c4ff717f9168de1db121866cc"

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
