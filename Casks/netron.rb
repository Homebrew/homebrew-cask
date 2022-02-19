cask "netron" do
  version "5.5.7"
  sha256 "5b243272066d978616d2d0ea7f0899b7924d94b4c9169eb386c4bc75918f4994"

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
