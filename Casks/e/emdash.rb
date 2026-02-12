cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.9"
  sha256 arm:   "df1f85cfaedea1ed537450e2affd6034e8d4402b0e36337e41468ccd2b057e75",
         intel: "6b4c504d73202e5db875d0780e020970b13af1ad81fe21152713436424bb556d"

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
