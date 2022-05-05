cask "sparrow" do
  version "1.6.3"
  sha256 "ff9373cb4b39663231f2b927f6de35f91d27f36788aecb95a1c70992fd100367"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
