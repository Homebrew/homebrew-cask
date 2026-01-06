cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.46"
  sha256 arm:   "b1538c5f2010d61286386766f6e759d1134f7f25bd741e4a081d2ecf719bb147",
         intel: "fe36effa938fb6a474adae4512f0c7ba6e03402f85f6f06fbfbda18e1fb61213"

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
