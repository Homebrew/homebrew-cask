cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "c25ee1f1753d72be70dcbf5c1b8906bf79cf1b9401f90b5958cdee2d6fe6d05c",
         intel: "bd882468dd0c770fc6a816d2cdf624faa5e0e12132ebfa9dc466640fb43a1ada"

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
