cask "mailbutler" do
  version "7823,3449531"
  sha256 "451ff2421d86020b00c65313a10571543d046c76d240fd2c869bc937f9e88613"

  url "https://downloads.mailbutler.io/sparkle/public/new-horizons/Mailbutler_#{version.csv.first}-#{version.csv.second}.pkg"
  name "Mailbutler"
  desc "Personal assistant and productivity tool for Apple Mail"
  homepage "https://www.mailbutler.io/"

  livecheck do
    url "https://downloads.mailbutler.io/sparkle/public/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "Mailbutler_#{version.csv.first}-#{version.csv.second}.pkg"

  uninstall launchctl: "com.mailbutler.agent",
            quit:      "com.mailbutler.agent",
            pkgutil:   "com.mailbutler.agent",
            delete:    "/Library/Mail/Bundles/Mailbutler.mailbundle"

  zap trash: [
    "~/Library/Application Scripts/*.group.com.mailbutler.agent",
    "~/Library/Application Scripts/com.mailbutler.app*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mailbutler.*.sfl*",
    "~/Library/Application Support/com.mailbutler.agent",
    "~/Library/Application Support/com.mailbutler.app",
    "~/Library/Caches/com.mailbutler.agent",
    "~/Library/Caches/com.mailbutler.app",
    "~/Library/Caches/SentryCrash/Mailbutler*",
    "~/Library/Containers/com.mailbutler.app",
    "~/Library/Group Containers/*.group.com.mailbutler.agent",
    "~/Library/HTTPStorages/com.mailbutler.agent",
    "~/Library/HTTPStorages/com.mailbutler.app",
    "~/Library/LaunchAgents/com.mailbutler.agent.plist",
    "~/Library/Preferences/com.mailbutler.*.plist",
    "~/Library/Preferences/group.com.mailbutler.agent.plist",
    "~/Library/Saved Application State/com.mailbutler.app.savedState",
  ]
end
