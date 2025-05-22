cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.2.2"
  sha256 arm:   "268feb276e1d040db8d6febb647790e003567edf78910d61f125586aa3253fa4",
         intel: "a8f21b09280ee4a6a7c4433de94460747bf5c53cc84a790c08b0049689d62b6c"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
