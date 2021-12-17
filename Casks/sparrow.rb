cask "sparrow" do
  version "1.5.5"
  sha256 "dc2c437f80371edfff3151b12691b9296a430ce4d324ccdab12a8e1859ecf3e0"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
