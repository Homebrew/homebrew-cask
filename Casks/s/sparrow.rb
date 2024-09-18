cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.0"
  sha256 arm:   "26dc0c1640d05da5e0a0d67f5e2d5887aed8c6d371cfbd68201d07705caed4a6",
         intel: "75f7625f5ea24472aead2a4c68c4c062b60bf3ccdf4d48de005e051f307e4db7"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
