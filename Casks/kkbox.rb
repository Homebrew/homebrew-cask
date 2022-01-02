cask "kkbox" do
  version "21.12.10"
  sha256 "96b5fbe1a1c13b75eef940a75e2a3f8ab7a28918d28c7c44e4de24879ce199d4"

  url "https://dl-universal.kfs.io/#{version}/KKBOX-#{version}.dmg",
      verified: "dl-universal.kfs.io/"
  name "KKBOX"
  desc "Music streaming service"
  homepage "https://www.kkbox.com/"

  depends_on macos: ">= :el_capitan"

  app "KKBOX.app"

  zap trash: [
    "~/Library/Application Support/KKBOX",
    "~/Library/Application Support/com.kkbox.KKBOX",
    "~/Library/Caches/KKBOX",
    "~/Library/Caches/com.kkbox.KKBOX",
    "~/Library/Caches/com.kkbox.electron-app",
    "~/Library/Caches/com.kkbox.electron-app.ShipIt",
    "~/Library/HTTPStorages/com.kkbox.KKBOX",
    "~/Library/HTTPStorages/com.kkbox.electron-app",
    "~/Library/Preferences/com.kkbox.KKBOX.plist",
    "~/Library/Preferences/com.kkbox.electron-app.plist",
    "~/Library/Saved Application State/com.kkbox.electron-app.savedState",
  ]
end
