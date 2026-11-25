cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.5.7"
  sha256 arm:   "c4b7d4a2f7030950f79df47b3250d76b0c3519177fdf01c482780e1fc4fa6d7c",
         intel: "1834c166c8dbc9bff4c2f38a2ee5e2b2c6271be76564f1394b30a8370434fba0"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  depends_on :macos

  app "Sparrow.app"

  uninstall quit: "com.sparrowwallet.sparrow"

  zap trash: "~/.sparrow"
end
