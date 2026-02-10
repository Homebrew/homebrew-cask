cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.4.0"
  sha256 arm:   "311ba21fd1e4d0932e9b433d9ee70bb28613d6b19281b434e5db876caddf6c7e",
         intel: "c67ae4ee71eec0bcce0dae1628760e79ae6007a2fd5a424e968afb8eefb1b713"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
