cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.4"
  sha256 arm:   "7227912d4d79c577a70f8fcfe9ec05a574aa8fe999e7a917dcf616893dd31daf",
         intel: "195b3eea0e1c519f134cda6c0844084fab81d76f64eefa89574e857338741d0f"

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
