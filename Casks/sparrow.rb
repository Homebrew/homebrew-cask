cask "sparrow" do
  version "1.5.4"
  sha256 "a9adc60b616d87edc7a72f4ee6e130c42be86145d1baa77b11d4374c0a15ccbf"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
