cask "clickup" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.0.3"

  if Hardware::CPU.intel?
    sha256 "27cf93a049e7fbf5689c39f2a6dd7dd8a3d428b907af142c1702653597773082"
  else
    sha256 "32829cb826bb440c9f563cbcf6934747f358fd6679a7c8032c6b6bada014f1d7"
  end

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
