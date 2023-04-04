cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.4"
  sha256 arm:   "810e60c8761e25ba78449a7c41a8a3af19e1d84dfc80566f715b69a800eacec1",
         intel: "980f7fb4fecf3f261e65c23ffe11bf66221f745a7b3ebd91f3a7934e8db2f59c"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
