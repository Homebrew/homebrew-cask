cask "kkbox" do
  version "26.6.1"
  sha256 "20bc56fa27ee3db43d58729fa5c578b929d8dd9da16f1a9ea61b1f2ff098662b"

  url "https://dl-universal-v2.kfs.io/KKBOX-#{version}-universal.dmg",
      verified: "dl-universal-v2.kfs.io/"
  name "KKBOX"
  desc "Music streaming service"
  homepage "https://www.kkbox.com/"

  livecheck do
    url "https://play.kkbox.com/download/macos"
    strategy :header_match
  end

  depends_on macos: :monterey

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
end
