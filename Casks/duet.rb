cask "duet" do
  version "2.4.2.4"
  sha256 "6c6d246b023bf448634e3404bbee590f8cf8eb06ab3fd7f4f5bbe40777ea2e71"

  url "https://duet.nyc3.cdn.digitaloceanspaces.com/Mac/#{version.major_minor.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip",
      verified: "duet.nyc3.cdn.digitaloceanspaces.com/Mac/"
  name "Duet"
  desc "Tool for using an iPad as a second display"
  homepage "https://www.duetdisplay.com/"

  livecheck do
    url "https://updates.duetdisplay.com/latestMac"
    strategy :header_match do |headers|
      headers["location"][/duet[._-]v?(\d+(?:-\d+)+)\.zip/i, 1].tr("-", ".")
    end
  end

  auto_updates true

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
