cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.41"
  sha256 arm:   "2432888472b0b83fa57c5fc93a8833ee9ef632cfab1c2fa5df8f01719fc8b785",
         intel: "93be52871f9e67e66d51474f60328781251b5db92b422e1d472c18efecfddaa2"

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
