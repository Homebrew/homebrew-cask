cask "netron" do
  version "5.5.5"
  sha256 "47dac9c95bdd8ee2ba191737641b5d9d6aa25903b3820c263f4de97af37ef4ae"

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
