cask "clickup" do
  arch arm: "arm64", intel: "x64"

  version "3.3.57"
  sha256 arm:   "b24b87c66d0e2bd60412c9cf4728ab7daf68c5b058576600cecdadf774d25935",
         intel: "3dcbea893e1fb51b624c012a67271444a58d28822c136c6377feae0a66e16033"

  url "https://download.todesktop.com/210531zdwwjv8ke/ClickUp%20#{version}-#{arch}.dmg",
      verified: "download.todesktop.com/210531zdwwjv8ke/"
  name "ClickUp"
  desc "Productivity platform for tasks, docs, goals, and chat"
  homepage "https://clickup.com/"

  livecheck do
    url "https://download.todesktop.com/210531zdwwjv8ke/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

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
