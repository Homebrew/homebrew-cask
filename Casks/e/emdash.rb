cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "1.1.40"
  sha256 arm:   "b78f007a9799f64fb9d19dd9ca8669317dafea564f2d072189318f048f5e4ad7",
         intel: "8190d833caaabab5d396bdfad0416213d798a5d5a9dd9f09ca3307e81ded62dc"

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
