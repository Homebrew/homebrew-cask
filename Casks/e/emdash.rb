cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.38"
  sha256 arm:   "781440d10a78f98a8ffaeb189974d7c97ba40e2cb53565fcec62ca84f18e8524",
         intel: "0659b8abeedec0f045533877fceece08317e7427d0c3d47ccaae9ea4d567479f"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  depends_on macos: ">= :big_sur"

  app "emdash.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.sfl*",
    "~/Library/Application Support/Emdash",
    "~/Library/Logs/emdash",
    "~/Library/Preferences/com.emdash.plist",
    "~/Library/Saved Application State/com.emdash.savedState",
  ]
end
