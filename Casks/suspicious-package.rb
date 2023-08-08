cask "suspicious-package" do
  on_sierra :or_older do
    version "3.4.1"
    sha256 "e4673a0c590e7dcb711789d98fcadd2283c2152d262b7809dfd8c8a1b3e9094b"

    url "https://www.mothersruin.com/software/downloads/SuspiciousPackage-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra do
    version "3.5.3"
    sha256 "fad69db99a60058f8136954653fa2de81667f12cb731957a6d921d36ceaf195d"

    url "https://www.mothersruin.com/software/downloads/SuspiciousPackage-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "4.0"
    sha256 "844708fb75f8aa102f3ede8ddef3c20180f469b7bc8ec65bbc0370ce9f7db33c"

    url "https://www.mothersruin.com/software/downloads/SuspiciousPackage-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina do
    version "4.2.1"
    sha256 "5c05df9bf3d56758a3eefa972597e3138afdea4c3774f91fe2849482b7112823"

    url "https://www.mothersruin.com/software/downloads/SuspiciousPackage-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "4.3.3,1065.5"
    sha256 :no_check

    url "https://www.mothersruin.com/software/downloads/SuspiciousPackage.dmg"

    livecheck do
      url "https://www.mothersruin.com/software/SuspiciousPackage/data/SuspiciousPackageVersionInfo.plist"
      regex(/CFBundleShortVersionString.*?\n.*?(\d+(?:\.\d+)*).*?\n.*?CFBundleVersion.*?\n.*?(\d+(?:\.\d+)*)/i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
      end
    end
  end

  name "Suspicious Package"
  desc "Application for inspecting installer packages"
  homepage "https://www.mothersruin.com/software/SuspiciousPackage/"

  app "Suspicious Package.app"
  binary "#{appdir}/Suspicious Package.app/Contents/SharedSupport/spkg"

  zap trash: [
    "~/Library/Application Scripts/com.mothersruin.SuspiciousPackageApp.QLPreview",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mothersruin.suspiciouspackageapp.sfl*",
    "~/Library/Caches/com.mothersruin.SuspiciousPackageApp",
    "~/Library/Caches/com.mothersruin.XPCService.UpdateChecker",
    "~/Library/Containers/com.mothersruin.SuspiciousPackageApp.QLPreview",
    "~/Library/Preferences/com.mothersruin.SuspiciousPackage.plist",
    "~/Library/Preferences/com.mothersruin.SuspiciousPackageApp.plist",
    "~/Library/Saved Application State/com.mothersruin.SuspiciousPackageApp.savedState",
    "~/Library/WebKit/com.mothersruin.SuspiciousPackageApp",
  ]
end
