cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.45"
  sha256 arm:   "3d565faf815e4ecdbf7b05429d06aadee29e330af680b3b96c1ba513dab107a6",
         intel: "1ec0db05a4947767d67d7a3c57ecf1a338ae6547d25621174030fdc4dfc4058f"

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
