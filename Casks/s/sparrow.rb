cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.9.1"
  sha256 arm:   "5798d12a297e8b05d108a189b2adaf100986cf3d1e3f20155d760e3fc0fc523e",
         intel: "577a2be42dd36d8da39b1b1c84b060f7280cace5d1be81a4cd585ab357ed751b"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
