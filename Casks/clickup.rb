cask "clickup" do
  arch arm: "arm64", intel: "x64"

  version "3.3.22"
  sha256 arm:   "09abd48d41138cf0a3912c89a5b5951338ebc1140a0e42ac924bcaf6ebe18b06",
         intel: "249fad75d7d72c2dc8a24c3dbccc2f5b1780ddc29f96806e4aeb9f4b0d658fcd"

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
