cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "1.1.35"
  sha256 arm:   "e496086c5a4c8cedf950ffe94429b9c582d28ac1d8adf212ca2fc971bb2ae1d4",
         intel: "b982ca378326f0d8470b37595294ff9dc968f9e6179aa5ce96cb45bc32e12d88"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "emdash.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.sfl*",
    "~/Library/Application Support/Emdash",
    "~/Library/Logs/emdash",
    "~/Library/Preferences/com.emdash.plist",
    "~/Library/Saved Application State/com.emdash.savedState",
  ]
end
