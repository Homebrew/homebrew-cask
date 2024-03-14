cask "minotaur-wallet" do
  arch arm: "-arm64", intel: ""

  version "2.0.0"
  sha256 arm:   "67d6aa87578c88be79c4083c1726d6292737105cf3ef49c745917cf9e353b7e5",
         intel: "a8f139199c285d1f9b477e87a631dee4394c3a5a6355d30c8a7d5a77427c9478"

  url "https://github.com/minotaur-ergo/minotaur-wallet/releases/download/v#{version}/minotaur-#{version}#{arch}.dmg"
  name "Minotaur Wallet"
  desc "This is the first multi-platform wallet for ergo"
  homepage "https://github.com/minotaur-ergo/minotaur-wallet"

  depends_on macos: ">= :catalina"

  # Renamed for consistency: the real name is Minotaur Wallet
  app "minotaur.app", target: "Minotaur Wallet.app"
  
  zap trash: [
    "~/Databases/minotaur",
    "~/Library/Application Support/minotaur",
    "~/Library/Preferences/io.github.minotaurergo.minotaur.plist",
    "~/Library/Saved Application State/io.github.minotaurergo.minotaur.savedState",
  ]
end
