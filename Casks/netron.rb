cask "netron" do
  version "4.5.4"
  sha256 "88eca719d05c9499875a4f4c83301b8f4a835a0cf5802714a0af1d7639969358"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
