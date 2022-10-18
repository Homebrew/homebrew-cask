cask "mailbutler" do
  version "5627,2491904"
  sha256 "a7c8837d56166d5939160ea051b47faef7c0e00fd44d5be1c7bb74d2dcfb7ca4"

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
