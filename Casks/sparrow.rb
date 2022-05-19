cask "sparrow" do
  version "1.6.4"
  sha256 "6e8cec928e87b7033ccdee8099f24258fb723daf172569002270d9d8559000af"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
