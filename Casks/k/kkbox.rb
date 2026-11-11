cask "kkbox" do
  version "26.11.9"
  sha256 "10733791b77dbfd2e266de1780299103ce4b7f3a06eca57b34ec554d873b1159"

  url "https://dl-universal-v2.kfs.io/KKBOX-#{version}-universal.dmg"
  name "KKBOX"
  desc "Music streaming service"
  homepage "https://play.kkbox.com/"

  livecheck do
    url "https://play.kkbox.com/download/macos"
    strategy :header_match
  end

  depends_on macos: :ventura

  app "KKBOX.app"

  uninstall quit: "com.kkbox.electron-app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.kkbox.electron-app.sfl*",
    "~/Library/Application Support/com.kkbox.KKBOX",
    "~/Library/Application Support/KKBOX",
    "~/Library/Caches/com.kkbox.electron-app",
    "~/Library/Caches/com.kkbox.electron-app.ShipIt",
    "~/Library/Caches/com.kkbox.KKBOX",
    "~/Library/Caches/KKBOX",
    "~/Library/HTTPStorages/com.kkbox.electron-app",
    "~/Library/HTTPStorages/com.kkbox.KKBOX",
    "~/Library/Logs/KKBOX",
    "~/Library/Preferences/com.kkbox.electron-app.plist",
    "~/Library/Preferences/com.kkbox.KKBOX.plist",
    "~/Library/Saved Application State/com.kkbox.electron-app.savedState",
  ]
end
