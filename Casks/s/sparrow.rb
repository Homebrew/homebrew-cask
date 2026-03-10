cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.4.2"
  sha256 arm:   "35360010de9c717f76cedf56ed9f19bd043a7d9501fec62229adbce534162ed1",
         intel: "74f92ed95ae2c5d626c4a7138b26faa46d6eca35ce5c8744daa71da4da5725e2"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
