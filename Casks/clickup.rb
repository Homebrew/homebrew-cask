cask "clickup" do
  arch arm: "arm64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "49fd96921df7000fc3d750db7a992407290b4b1a38076ea912a25f59e96e5416",
         intel: "615a46400330fb15bb3ae0270369aee8247fb76d6e074887fa8a5fd9b1570168"

  url "https://download.todesktop.com/210531zdwwjv8ke/ClickUp%20#{version}-#{arch}.dmg",
      verified: "download.todesktop.com/210531zdwwjv8ke/"
  name "ClickUp"
  desc "Productivity platform for tasks, docs, goals, and chat"
  homepage "https://clickup.com/"

  livecheck do
    url "https://download.todesktop.com/210531zdwwjv8ke/latest-mac.yml"
    strategy :electron_builder
  end

  app "ClickUp.app"

  zap trash: [
    "~/Library/Application Support/ClickUp",
    "~/Library/Application Support/ClickUp Desktop",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.clickup.desktop-app.sfl2",
    "~/Library/Caches/com.clickup.desktop-app",
    "~/Library/Caches/com.clickup.desktop-app.ShipIt",
    "~/Library/Logs/ClickUp",
    "~/Library/Preferences/com.clickup.desktop-app.plist",
    "~/Library/Saved Application State/com.clickup.desktop-app.savedState",
  ]
end
