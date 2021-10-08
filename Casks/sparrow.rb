cask "sparrow" do
  version "1.5.1"
  sha256 "f6e2279642d2bfbcee253fdc5d0c47957b742a2bbdb81817138457fa6a506a12"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
