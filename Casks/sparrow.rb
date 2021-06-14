cask "sparrow" do
  version "1.4.1"
  sha256 "35a5162cca38d9d63d8c17df00d16fa9981f09a3d5f3f98a951aeb960be70802"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Modern desktop Bitcoin wallet application supporting most hardware wallet"
  homepage "https://sparrowwallet.com/"

  depends_on macos: ">= :sierra"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
