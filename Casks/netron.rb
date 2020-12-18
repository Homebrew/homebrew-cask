cask "netron" do
  version "4.6.7"
  sha256 "095e2fc0e11a445d4ac0dc187a8c834cddca1448349a7557e3c81f95b76c6150"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast "https://github.com/lutzroeder/netron/releases.atom"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
