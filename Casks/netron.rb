cask "netron" do
  version "4.8.8"
  sha256 "0286a684e0c9e171b2971474a4f260653030ad3db31b9f204c9cc54b8f093d9d"

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
