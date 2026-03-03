cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.24"
  sha256 arm:   "90af2cf4ecfca43f69ffbfd79d5ce9cefeb91c9747a4372ea8197b15fb28540d",
         intel: "f7dd81a8cb945f5a2ffe16a07008227907259ebdbf9a28c162b67dc50e84e248"

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
