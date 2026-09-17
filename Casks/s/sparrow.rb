cask "sparrow" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.5.5"
  sha256 arm:   "02be94466d92bef4b81b6b9c3efaf6ef4910f713330065309750e92679f711cd",
         intel: "8db7d49112f73be162e2a22dd1494c095b760fca22e50223405a425deb4e7dcf"

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  depends_on :macos

  app "Sparrow.app"

  uninstall quit: "com.sparrowwallet.sparrow"

  zap trash: "~/.sparrow"
end
