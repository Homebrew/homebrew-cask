cask "duet" do
  version "3.20.3.0"
  sha256 "2edcc20b4238f1490579595956c1e18dfd441d0e6abbb69c9cba788640e80ab9"

  url "https://duetdownload.com/Mac/#{version.major}_x/duet-dd-#{version.dots_to_hyphens}.dmg"
  name "Duet"
  desc "Remote desktop and second display tool"
  homepage "https://www.duetdisplay.com/"

  livecheck do
    url "https://updater.duetdownload.com/dd/sparkle.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "duet.app"

  uninstall quit: "com.kairos.duetMac",
            kext: "com.karios.driver.DuetDisplay"

  zap trash: [
        "~/Library/Application Support/com.kairos.duet*",
        "~/Library/Caches/com.crashlytics.data/com.kairos.duet*",
        "~/Library/Caches/com.kairos.duet*",
        "~/Library/Caches/io.fabric.sdk.mac.data/com.kairos.duet*",
        "~/Library/Caches/SentryCrash/duet",
        "~/Library/HTTPStorages/com.kairos.duet*",
        "~/Library/Preferences/com.kairos.duet*.plist",
      ],
      rmdir: [
        "~/Library/Caches/com.crashlytics.data",
        "~/Library/Caches/io.fabric.sdk.mac.data",
      ]
end
