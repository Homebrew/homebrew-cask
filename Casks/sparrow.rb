cask "sparrow" do
  version "1.5.2"
  sha256 "5b4acb49be52158d35af8f1428b1ba89b9194efe8efba3bf51cf992ff2d5a784"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
