cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.6"
  sha256 arm:   "1797d30708c136b62189defb7167828e430834193d846fd5489d6caa3813f678",
         intel: "2cfc4ca1332610252f926305b69fd6714b531f422e1ffb8cd6791f7ecfb7d242"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  depends_on macos: ">= :big_sur"

  app "emdash.app"

  zap trash: [
    "/Library/Logs/emdash",
    "/Library/Saved Application State/com.emdash.savedState",
    "~/Library/Application Support/emdash",
    "~/Library/Preferences/com.emdash.plist",
  ]
end
