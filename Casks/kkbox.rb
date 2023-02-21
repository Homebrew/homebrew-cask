cask "kkbox" do
  version "23.2.10"
  sha256 "47f7bdf613d15d8051f1b8c992d1a84b62c2eba2ded754f879e11ae71549ea3a"

  url "https://dl-universal.kfs.io/#{version}/KKBOX-#{version}.dmg",
      verified: "dl-universal.kfs.io/"
  name "KKBOX"
  desc "Music streaming service"
  homepage "https://www.kkbox.com/"

  livecheck do
    url "https://dl-universal.kfs.io/latest/darwin"
    strategy :header_match
  end

  depends_on macos: ">= :el_capitan"

  app "KKBOX.app"

  uninstall quit: "com.kkbox.electron-app"

  zap trash: [
    "~/Library/Application Support/com.kkbox.KKBOX",
    "~/Library/Application Support/KKBOX",
    "~/Library/Caches/com.kkbox.electron-app.ShipIt",
    "~/Library/Caches/com.kkbox.electron-app",
    "~/Library/Caches/com.kkbox.KKBOX",
    "~/Library/Caches/KKBOX",
    "~/Library/HTTPStorages/com.kkbox.electron-app",
    "~/Library/HTTPStorages/com.kkbox.KKBOX",
    "~/Library/Preferences/com.kkbox.electron-app.plist",
    "~/Library/Preferences/com.kkbox.KKBOX.plist",
    "~/Library/Saved Application State/com.kkbox.electron-app.savedState",
  ]
end
