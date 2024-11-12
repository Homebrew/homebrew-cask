cask "duet" do
  on_catalina :or_older do
    version "2.4.7.1"
    sha256 "3e91729e333ab3e2984bec4c1194e7022d016d91c79cd21509bc00b42b9559bd"

    url "https://duetdownload.com/Mac/#{version.major_minor.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip",
        verified: "duetdownload.com/Mac/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "3.20.0.0"
    sha256 "ed344e691d12d77037d9919b34aaa3aa7ce5fd3fc9c1f9f0b6327f2be67a0720"

    url "https://duetdownload.com/Mac/#{version.major}_x/duet-dd-#{version.dots_to_hyphens}.dmg",
        verified: "duetdownload.com/Mac/"

    livecheck do
      url "https://updates.duetdisplay.com/AppleSilicon"
      regex(/duet[._-]dd[._-]v?(\d+(?:-\d+)+)\.dmg/i)
      strategy :header_match do |headers, regex|
        match = headers["location"]&.match(regex)
        next if match.blank?

        match[1].tr("-", ".")
      end
    end
  end

  name "Duet"
  desc "Remote desktop and second display tool"
  homepage "https://www.duetdisplay.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
