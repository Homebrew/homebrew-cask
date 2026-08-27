cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.5.4"
  sha256 arm:   "e8d8637a737480721bc820a1b96a79483fc4c73bc0095f6ce1cfb93637158173",
         intel: "ab497521e5f7f2d525198df94ef26fdf3d4086ddaa611f578cac2c399a34cce2"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  depends_on :macos

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
