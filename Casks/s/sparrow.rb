cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.4.1"
  sha256 arm:   "ed4030adc0df69db250b15fd956f6c09a0f8b4a8d31243d78185533ea9a6cb21",
         intel: "cfada57d0e368e3a0eea902e5a2188329c473a33372e3fdbfa131e58fe0af84c"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
