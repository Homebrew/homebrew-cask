cask "kkbox" do
  version "23.3.0"
  sha256 "875e3adfa94c6d3816176e905bf5739200990ba6a6abd18665ca71b6ba841d88"

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
