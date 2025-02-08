cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.1.2"
  sha256 arm:   "cb2f68a6903e2f9798f7b9581fc982d6c90345b8d9e5ea9f336dfbf85845164a",
         intel: "6ad4ec3c9ac4451a5265fc314421b394ff065d7bb8d146dfb3c3ccb793bebb94"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
