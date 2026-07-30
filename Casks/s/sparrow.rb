cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.5.3"
  sha256 arm:   "ea6044422fff03b90baf82db48a5f73c9819848fe316175a9643e891b5699eed",
         intel: "d53cc749e83362205d86fe6974f4b2dc98795a136cb2596c93fd147ad588edaa"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  depends_on :macos

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
