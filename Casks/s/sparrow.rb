cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.5.0"
  sha256 arm:   "3b8d23bc5e68527cd8364cf9492f29de5c633651217aa571a689095c1f4da92d",
         intel: "44067b1913337b970a33eb304fd2736955e297ae87b53822b4c2be9d439b7a43"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  depends_on :macos

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
