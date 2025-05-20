cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.2.0"
  sha256 arm:   "a9f3aea1ee6f30aac68a562aa7337a7acb964e11926b3b1d431dc0722692732e",
         intel: "11f690423e475156bb14f6d78608f25d667c0fb58f7574bc13e688def3f4b98a"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
