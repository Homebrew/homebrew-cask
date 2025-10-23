cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.20"
  sha256 arm:   "d301bcaf150958e2bad8b37d6da2d9618f3d84529d32237da5a3466be2b63118",
         intel: "80c2e951bb571063e32c8fba1f0cc3131f4ef2f8620586dc5406dc7b965858ca"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  app "emdash.app"

  zap trash: [
    "/Library/Logs/emdash",
    "/Library/Saved Application State/com.emdash.savedState",
    "~/Library/Application Support/emdash",
    "~/Library/Preferences/com.emdash.plist",
  ]
end
