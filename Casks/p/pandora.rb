cask "pandora" do
  version "16.0.3"
  sha256 "04412c09f13416b8ad66ca5123e48b9803cfb627f09892434af66a40ed3a41b8"

  url "https://p-desktop-app.s3.amazonaws.com/releases/Pandora-#{version}.dmg"
  name "Pandora"
  desc "Desktop client for the Pandora web radio service"
  homepage "https://www.pandora.com/desktop"

  livecheck do
    url "https://pandora-web.app.link/e/desktop_mac_download"
    regex(/Pandora[._-](\d+(?:\.\d+)+)[._-]universal\.dmg/i)
    strategy :page_match
  end

  depends_on :macos

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
