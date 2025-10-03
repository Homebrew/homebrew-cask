cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.3.0"
  sha256 arm:   "5b2a939b3fe7dedf4a1fc7ab6881d76ef631ec764f88ae2da1a1e92f4709b722",
         intel: "09c3c99a9e86c47e7aa1e5e5e2a22b1f5f011899ee4d8e27d5d99ee0772899b4"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
