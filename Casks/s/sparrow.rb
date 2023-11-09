cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.8.0"
  sha256 arm:   "a144925d9b58462202dd87100f1e3bc7b135cedaa033f6dd28d2290e4a5c09c8",
         intel: "72098d503b807268226832f2e883cf2ec862475d849265cad00dbbf3956777d9"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
