cask "mailbutler" do
  version "5517,2434328"
  sha256 "0f503705c213f57fdff84499006cb3e3e7cc4c12ecd2208b56c1160b734f84f2"

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
