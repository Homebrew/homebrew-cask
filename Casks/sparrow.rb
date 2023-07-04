cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.7"
  sha256 arm:   "92f8c276bee17f0697918270841b49a417fa113ecd6792bfb6508e269153c900",
         intel: "d159154eb1062b91fc8e457236cbd6172a78eeb5a152c62088e933211fc39c35"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
