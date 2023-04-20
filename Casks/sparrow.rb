cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.6"
  sha256 arm:   "50118a6bb6e21a60aef0c7d5dfea3fa1b8944d18bbd0a39d66e79a1f49856560",
         intel: "2cc49ee72eb99074bfeff754c65885be37dd8081c027c0fd524ca3d3a7b2d353"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
