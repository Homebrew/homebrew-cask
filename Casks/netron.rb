cask "netron" do
  version "6.0.9"
  sha256 "710a984567b004220e9ebc728b4ed0e57c67ae4d7180c93b26bb2a7fc9068254"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
