cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.8.6"
  sha256 arm:   "775d1f6cd77deba0f9ea67b495fcd26bc9d666147c4abd93dd71c1df3caf270f",
         intel: "aa6d64dd3ce5d6de280f557b52d32aa6bbdf575ff046593f64e217c8c61cbac9"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
