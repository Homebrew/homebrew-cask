cask "netron" do
  version "5.1.7"
  sha256 "8f01f8ec7c6f242012f246b2452dc9336ae3800f87fd81e7dfcb001fe4ffa9c0"

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
