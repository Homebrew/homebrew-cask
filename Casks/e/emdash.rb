cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.42"
  sha256 arm:   "35d3eecabc2b2136bf77913e5a1e8ea728f1acd7169ac4241e3dcb50ca472028",
         intel: "759a646a2482de1c27bbf162135e2ca451b81bf4355819bfe3071402d9b0b548"

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
