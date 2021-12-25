cask "netron" do
  version "5.4.7"
  sha256 "7bdd08c4bac2496c8c087ce7f56aecef12a0629aaa5cf290317217a2ea9683f5"

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
