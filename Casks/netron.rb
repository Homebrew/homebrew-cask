cask "netron" do
  version "6.4.0"
  sha256 "40813dd69ed34b46aae8dfa8a82f35114902c5f4b802004fb89baa3c090856a2"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualizer for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true

  app "Netron.app"
end
