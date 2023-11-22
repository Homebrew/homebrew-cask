cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.8.1"
  sha256 arm:   "b2203fc939ae61068dbd084e256e581b58813019aea8b2c71beb70cfe33ebbe1",
         intel: "2789804db778f553f3b743fe87eb2affa171f3a427185aba2d902e07a02a1588"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
