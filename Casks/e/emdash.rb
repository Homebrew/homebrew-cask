cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.25"
  sha256 arm:   "4dd45c40d6c55f18f6655c041e812d46e8e7721c5554527ec7e13c8f5660bed7",
         intel: "bfd74cd2a068ee2fc530b20de91e8654acd4fce0129a0b60217a9821ff7d70cb"

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
