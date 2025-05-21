cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.2.1"
  sha256 arm:   "f8ade3ca036f3a875a8563789dc446c7abca1738f5684914dce0cd512b62eb41",
         intel: "606ebcd4a370e9a8651c668438409056d03f490c79f8a27498bd8936dd820ccd"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
