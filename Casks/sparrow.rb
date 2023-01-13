cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.1"
  sha256 arm:   "5449471cf598f2a7d5fb5f9dedcfb9817248770048ceabfd496c541cea5ace84",
         intel: "85371bfd962a840431eab363cebff83eed231f43c06e524eccc8cf8652460d77"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
