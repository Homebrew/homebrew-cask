cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.5.1"
  sha256 arm:   "9c2f82824570e0c3f1c3fa9cc66ab942a130c234b5a972bf8b37c5857c0f409b",
         intel: "b352aa80b7f553cd1e8ad9b685a840d82b1d7f9e66d69c7732bb878554ec00f6"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  depends_on :macos

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
