cask "netron" do
  version "5.2.2"
  sha256 "d3f454bb32e8ac70adf87d6814d74e2697344703caa11b76216f87274c5b4f19"

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
