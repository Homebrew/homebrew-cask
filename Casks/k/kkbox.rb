cask "kkbox" do
  version "24.8.1"
  sha256 "63580365bc8f2b6a66a20e489745e62528eab5b87854cac24980685c09b8207b"

  url "https://dl-universal-v2.kfs.io/KKBOX-#{version}.dmg",
      verified: "dl-universal-v2.kfs.io/"
  name "KKBOX"
  desc "Music streaming service"
  homepage "https://www.kkbox.com/"

  livecheck do
    url "https://play.kkbox.com/download/macos"
    strategy :header_match
  end

  depends_on macos: ">= :catalina"

  app "KKBOX.app"

  uninstall quit: "com.kkbox.electron-app"

  zap trash: [
    "~/Library/Application Support/com.kkbox.KKBOX",
    "~/Library/Application Support/KKBOX",
    "~/Library/Caches/com.kkbox.electron-app",
    "~/Library/Caches/com.kkbox.electron-app.ShipIt",
    "~/Library/Caches/com.kkbox.KKBOX",
    "~/Library/Caches/KKBOX",
    "~/Library/HTTPStorages/com.kkbox.electron-app",
    "~/Library/HTTPStorages/com.kkbox.KKBOX",
    "~/Library/Preferences/com.kkbox.electron-app.plist",
    "~/Library/Preferences/com.kkbox.KKBOX.plist",
    "~/Library/Saved Application State/com.kkbox.electron-app.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
