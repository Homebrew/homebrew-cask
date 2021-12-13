cask "netron" do
  version "5.4.4"
  sha256 "86c5288564253b607f3b3ee4f74e1dcda5e11eeccb12c3ee7e7e840c5da29735"

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
