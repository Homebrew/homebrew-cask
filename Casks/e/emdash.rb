cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.47"
  sha256 arm:   "28c67f2f5d6bb1079752f1b38511d690ad5c19ce57320c9fd6c9ee1b136bae80",
         intel: "9ca04d9fda049adb901eec8bc38b94b05094459d0da8b06f41d00a48b86da5b6"

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
