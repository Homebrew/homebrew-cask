cask "clawd-on-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "9ad0ea8063e1e38d27d22d36f92e72141b1c59f0be844c4088fcbfd359c07814",
         intel: "b1bb05dd79838896d7ea99c0478c65e61b4c1777538cc14b9c26c635a351d46d"

  url "https://github.com/rullerzhou-afk/clawd-on-desk/releases/download/v#{version}/Clawd-on-Desk-#{version}-#{arch}.dmg"
  name "Clawd on Desk"
  desc "Desktop pet that reacts to AI coding agents"
  homepage "https://github.com/rullerzhou-afk/clawd-on-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Clawd on Desk.app"

  zap trash: [
    "~/Library/Application Support/clawd-on-desk",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.clawd.on-desk.sfl*",
    "~/Library/Caches/com.clawd.on-desk",
    "~/Library/HTTPStorages/com.clawd.on-desk",
    "~/Library/Logs/clawd-on-desk",
    "~/Library/Preferences/com.clawd.on-desk.plist",
    "~/Library/Saved Application State/com.clawd.on-desk.savedState",
  ]
end
