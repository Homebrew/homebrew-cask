cask "filo" do
  arch arm: "arm64", intel: "x64"

  version "1.2.9"
  sha256 :no_check

  url "https://download.filomail.com/mac_upgrade/versions/latest/prod/#{arch}/Filo-#{arch}.dmg"
  name "FiloMail"
  desc "AI-powered email client designed for Gmail"
  homepage "https://www.filomail.com/"

  livecheck do
    url "https://download.filomail.com/mac_upgrade/versions/latest/prod/electronVersion.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
