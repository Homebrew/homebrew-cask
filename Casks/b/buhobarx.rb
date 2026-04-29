cask "buhobarx" do
  version "1.3.0,22"
  sha256 "c6b84daa7ea3d3ddd2b8310057c0f5966179184b15b659fb98152f04fce0f28e"

  url "https://drbuho.net/buhobarx/buhobarx_b#{version.csv.second}.dmg",
      verified: "drbuho.net/"
  name "BuhoBarX"
  desc "Menu bar icon organiser"
  homepage "https://www.drbuho.com/buhobarx"

  livecheck do
    url "https://drbuho.net/buhobarx/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "BuhoBarX.app"

  zap trash: [
    "~/Library/Caches/com.drbuho.BuhoBarX",
    "~/Library/Caches/SentryCrash/BuhoBarX",
    "~/Library/HTTPStorages/com.drbuho.BuhoBarX",
    "~/Library/Logs/BuhoBarX",
    "~/Library/Preferences/com.drbuho.BuhoBarX.plist",
  ]
end
