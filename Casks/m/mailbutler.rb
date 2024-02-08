cask "mailbutler" do
  version "7216,3177448"
  sha256 "d4dc3572e365b0f21d511a5602ab55c0f7a7ff95a3c3f637d8bdbc0ba121e790"

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.csv.first}-#{version.csv.second}.zip"
  name "Mailbutler"
  desc "Personal assistant and productivity tool for Apple Mail"
  homepage "https://www.mailbutler.io/"

  livecheck do
    url "https://downloads.mailbutler.io/sparkle/public/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Mailbutler.app"

  uninstall delete: "/Library/Mail/Bundles/Mailbutler.mailbundle"

  zap trash: [
    "~/Library/Application Support/com.mailbutler.app",
    "~/Library/Caches/com.mailbutler.app",
    "~/Library/LaunchAgents/com.mailbutler.agent.plist",
    "~/Library/Preferences/com.mailbutler.agent.plist",
    "~/Library/Preferences/com.mailbutler.app.plist",
    "~/Library/Saved Application State/com.mailbutler.app.savedState",
  ]
end
