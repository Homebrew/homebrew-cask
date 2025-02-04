cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.1.1"
  sha256 arm:   "25656b7722189186dd7f86f202e06e529d0971ad647eb742ac40f50f15932062",
         intel: "742353f5b3f18dff3a9018bdb0a232ded67d556d8c4cffce7737565e7a15703a"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
