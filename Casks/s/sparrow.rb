cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.5.2"
  sha256 arm:   "9f7b8c02ded0b98e6b303c8e3f3920f95baaa0743e116ea7fabb37b8a047ca41",
         intel: "1942ea107bc70683e26ab76e321980ff39bd8589c0f40fe81c82327d4a2871f5"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  depends_on :macos

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
