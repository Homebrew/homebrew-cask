cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.23"
  sha256 arm:   "0166157f4ee0f011bdb778fc56ddf367adf7647a38e9543b8375498f5325691b",
         intel: "b1349836166a9a8e6a4aafad6454c791f19b0a24b89786405cfd25f728113d51"

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
