cask "kkbox" do
  version "23.5.0"
  sha256 "524ce270c264abde038795ee9f2c439021acf66c8df0cabca5e52e2d3d7e79fd"

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
