cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.26"
  sha256 arm:   "2341c2f20f355f262470fd1c2f1ca4bbe5226d33966bfcee10b937ebba9b5e48",
         intel: "a705fe3ec0bf56fdd1d7a96d8c3b0735b788ce2f62b589c97a221df943059a91"

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
