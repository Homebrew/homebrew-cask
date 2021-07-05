cask "sparrow" do
  version "1.4.2"
  sha256 "272cf5e8f9e7481d078a52bf3e12bad0bca960210c554e2049202015c6d28bbc"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Modern desktop Bitcoin wallet application supporting most hardware wallet"
  homepage "https://sparrowwallet.com/"

  depends_on macos: ">= :sierra"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
