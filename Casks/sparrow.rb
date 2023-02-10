cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.2"
  sha256 arm:   "4bf3c4e50f21552d6d798f821186e4913bec739cfe31a29a1a81eaa50e970d3b",
         intel: "ac32af31eb75e434abb0df88328e91910f1c88f26e630c0a660ce9491e7364cf"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
