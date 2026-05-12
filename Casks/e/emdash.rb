cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "1.1.10"
  sha256 arm:   "5a3b9583f1871e12fe68c79ceaca5044e139fcaa3dcdef245fdc73ca8670b6e5",
         intel: "57e58c638d8882a6f284a126ca3cbc7acee0e7ece3646b86a7e11fc24c0ca935"

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
