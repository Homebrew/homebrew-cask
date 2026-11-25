cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.5.6"
  sha256 arm:   "4211bf7a58f7cfb88b541e33220bed75b316d92adfeb18565e4bbc53e33759b9",
         intel: "09e54e472db8bbf7b2c7078889468771d6f60a446af464e1a4ca05556fa90f39"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  depends_on :macos

  app "Sparrow.app"

  uninstall quit: "com.sparrowwallet.sparrow"

  zap trash: "~/.sparrow"
end
