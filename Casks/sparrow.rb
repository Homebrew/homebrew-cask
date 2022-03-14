cask "sparrow" do
  version "1.6.1"
  sha256 "ac754bba9d0e977cd9bc52e3420585def34ac26dd3cb56b1601dfd297dc3d7a8"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
