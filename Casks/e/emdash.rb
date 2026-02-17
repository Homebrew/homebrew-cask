cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.13"
  sha256 arm:   "e1f70e813ec8cc08e59010fd8809d21cee92ec540f6281bb8c1a2bc56a6f322f",
         intel: "57dfd35d06a71d9e9b29ff1660a09d5b7becaf1c83172453549a926fc1d45086"

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
