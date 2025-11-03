cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.27"
  sha256 arm:   "a0daf165d1fd70fc8d3cbcdfedd5d2bd738af52423f978ef003243716821d49f",
         intel: "7d77b75525ad5f27e96a7cf5836ef022d5b342da67da468ef39aec5182dc289f"

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
