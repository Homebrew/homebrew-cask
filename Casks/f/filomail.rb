cask "filomail" do
  arch arm: "arm64", intel: "x64"

  version "1.2.5"
  sha256 arm:   "d19dcf0031b52d5687570d9f569ea9e75b13d201a3bb65127fceec8f66ff1b07",
         intel: "cff6db5f649c61ab02798a5936acf7631f60bc45f38642583d96b40f4042fe15"
         
  url "https://download.filomail.com/mac_upgrade/versions/latest/prod/#{arch}/Filo-#{arch}.dmg"
  name "FiloMail"
  desc "An AI-powered email client designed for Gmail"
  homepage "https://www.filomail.com/"

  livecheck do
    skip "Release notes are not updated frequently enough"
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Filo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.filo.client.sfl*",
    "~/Library/Application Support/CrashReporter/Filo_*.plist",
    "~/Library/Application Support/Filo",
    "~/Library/Caches/com.filo.client",
    "~/Library/Caches/com.filo.client.ShipIt",
    "~/Library/HTTPStorages/com.filo.client",
    "~/Library/HTTPStorages/com.filo.client.binarycookies",
    "~/Library/Logs/Filo",
    "~/Library/Preferences/com.filo.client.plist",
    "~/Library/Saved Application State/com.filo.client.savedState",
    "~/Library/WebKit/com.filo.client",
  ]
end