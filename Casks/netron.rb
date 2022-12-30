cask "netron" do
  version "6.3.7"
  sha256 "816e86595335ccdb965ef404dddbd444f445902479fd41edf547a0a6f689453c"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
