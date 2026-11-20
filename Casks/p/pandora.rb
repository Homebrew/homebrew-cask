cask "pandora" do
  version "16.1.0"
  sha256 "af7c19d79dd9f02f638faf64efae3df76843ffa83ac4e978758147d47578d54f"

  url "https://s3-us-west-2.amazonaws.com/p-desktop-app/releases-v2/Pandora-#{version}-universal.dmg"
  name "Pandora"
  desc "Desktop client for the Pandora web radio service"
  homepage "https://www.pandora.com/desktop"

  livecheck do
    url "https://pandora-web.app.link/e/desktop_mac_download"
    regex(/Pandora[._-](\d+(?:\.\d+)+)[._-]universal\.dmg/i)
    strategy :page_match
  end

  depends_on macos: :monterey

  app "Pandora.app"

  uninstall quit: "com.pandora.desktop"

  zap trash: [
    "~/Caches/com.pandora.desktop",
    "~/Caches/com.pandora.desktop.ShipIt",
    "~/Caches/Pandora",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.pandora.desktop.sfl*",
    "~/Library/Application Support/Pandora",
    "~/Library/Logs/Pandora",
    "~/Library/Preferences/com.pandora.desktop.plist",
    "~/Library/Saved Application State/com.pandora.desktop.savedState",
  ]
end
