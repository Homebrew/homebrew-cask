cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.3.1"
  sha256 arm:   "f9d410d1e6cbe64ed08e05d2a26ec404325ce14469d2eadaee9732f21b3aa2c4",
         intel: "0aca484eed61bbfc94423a2f885283ae042f6be204796db0186e148169c44770"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
