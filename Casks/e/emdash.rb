cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.41"
  sha256 arm:   "7218197ed268fb695623500484c6703ee13622dc29a4665f545af6ff212e7d16",
         intel: "f59a30882ee344dd733415c3f7dced5f6622df7e005111b3208926d79623b155"

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
