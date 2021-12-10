cask "sparrow" do
  version "1.5.3"
  sha256 "d04ed318bc927c5007b8b7e20abeeac8e26b6cb326b5436b83d01851fd9bb6a1"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
