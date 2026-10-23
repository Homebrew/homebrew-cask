cask "superhuman-docs" do
  version "1.0.14"
  sha256 "b24a54d7b569c623fa95e7695ea48a795a38fcf05a308b7ed61b9c69199f1b54"

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
