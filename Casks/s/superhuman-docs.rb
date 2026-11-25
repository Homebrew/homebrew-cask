cask "superhuman-docs" do
  version "1.0.26"
  sha256 "3ceb8b084c0dbaf3e4519c226bde6e6f292852b21eb55ab40ea6e60cd408b4d7"

  url "https://docs-desktop.superhuman.com/releases/Superhuman-Docs-#{version}-universal.dmg"
  name "Superhuman Docs"
  desc "Desktop client for team documents"
  homepage "https://superhuman.com/docs"

  livecheck do
    url "https://docs-desktop.superhuman.com/releases/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Superhuman Docs.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.superhuman.codaapp.desktop.sfl*",
    "~/Library/Application Support/Superhuman Docs",
    "~/Library/Caches/com.superhuman.CodaApp.Desktop",
    "~/Library/Logs/Superhuman Docs",
    "~/Library/Preferences/com.superhuman.CodaApp.Desktop.plist",
    "~/Library/Saved Application State/com.superhuman.CodaApp.Desktop.savedState",
  ]
end
