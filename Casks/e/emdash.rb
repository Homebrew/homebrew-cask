cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.23"
  sha256 arm:   "b17d4ee58296c92353438e0a5ac2b04b9f38135cb8577d807e467211028d804f",
         intel: "162bcb618e41ef3fce5d88f7de95d95f15e9877503cbfc9cd55abffaf5a19e2f"

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
