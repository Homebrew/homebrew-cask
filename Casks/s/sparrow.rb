cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.9"
  sha256 arm:   "b6a6d7b99f35449ac8da0802ad5bcd987396ac494e6762f54c0aa4413f8e9dc2",
         intel: "d04baf2de6ba22162b6cf874e8876c1a03370e9617d9cda4f3e6a63ff4795424"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
