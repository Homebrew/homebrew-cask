cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.0"
  sha256 arm:   "754c0a34e1030292ae92dad83b9deee3daff9fbde1dcfd5f3a546f0619532a89",
         intel: "ccefbfdc149cb2e4d2292df8e6e999cd283a838e257b5a7351d6d75975844870"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
