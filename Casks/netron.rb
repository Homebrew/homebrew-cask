cask "netron" do
  version "5.2.8"
  sha256 "f1f2a155e1dd80ed194b4f8ee2bec52c99c2a2391c4141bd591ecff5bbf37355"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  livecheck do
    url :url
    strategy :git
    regex(/^v(\d+(?:\.\d+)*)$/)
  end

  auto_updates true

  app "Netron.app"
end
