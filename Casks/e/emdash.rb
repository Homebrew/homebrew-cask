cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.48"
  sha256 arm:   "865d4ab6d7a1b49dfbd0e08b81dae7cfce39def57b96c49c6d075cf641a44953",
         intel: "2ea95d21e61430a10ebd54b1f59d491216dfc5af74b7adc577731f755bbf08d8"

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
