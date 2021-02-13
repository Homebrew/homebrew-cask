cask "netron" do
  version "4.7.7"
  sha256 "5e0f7396a78600f89c7dd3e7893c74d7f0fe3f44c81493fc4b38524dd4d06827"

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
