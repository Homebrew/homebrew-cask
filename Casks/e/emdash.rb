cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.8"
  sha256 arm:   "6a9e73ed55951fc2f889ff7138211cc267025bfbe7116aa33b568ba5858767a7",
         intel: "3a67fce090fd394cb9da824b335d253d431af7d6057fe88573fb88de851d0833"

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
