cask "clickup" do
  arch arm: "arm64", intel: "x64"

  version "3.1.2"
  sha256 arm:   "667b7ad843bd7479e00e67378d1235478aa9c8182724bc802048101bd96d4aac",
         intel: "c99e7f2379414e813401a323a295432d924cf348e1c679a3cf611033a0f69b86"

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
