cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.8"
  sha256 arm:   "2a3152884ede9006f87a918741224157b2bc3a68e53e07ec9b63560a8f6cb778",
         intel: "cbd32592511e2d5e6c023694ad17feb342557475c31b8503c5a6a51928468ade"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
