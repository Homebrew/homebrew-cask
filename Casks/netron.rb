cask "netron" do
  version "5.9.9"
  sha256 "c4d911ecff746f04b2421c8aad31a074b7a24a0523201b436542fe9911be64e2"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
