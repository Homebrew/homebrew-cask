cask "audius" do
  version "1.5.180"
  sha256 "3eb245564accf5cdd8aab9bbd749c98e576040aa2e8a8b84edef69ee7372f149"

  url "https://download.audius.co/Audius-#{version}-arm64.dmg"
  name "Audius"
  desc "Music streaming and sharing platform"
  homepage "https://audius.co/"

  livecheck do
    url "https://download.audius.co/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Audius.app"

  zap trash: [
    "~/Library/Application Support/Audius",
    "~/Library/Application Support/Caches/audius-client-updater",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.audius.app.sfl*",
    "~/Library/Logs/Audius",
    "~/Library/Preferences/co.audius.app.plist",
    "~/Library/Saved Application State/co.audius.app.savedState",
  ]
end
