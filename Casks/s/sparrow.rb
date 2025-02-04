cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.1.0"
  sha256 arm:   "bb2b816096c6621c2ef3cf4a683c248b76db42e58c384c075d338a1c987a7b34",
         intel: "0af264294d71b91bfdb21b54c738a3c113839a7564d2d27809738d69bc3492b9"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
