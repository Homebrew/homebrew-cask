cask "suspicious-package" do
  if MacOS.version <= :yosemite
    version "3.2"
    url "https://www.mothersruin.com/software/downloads/SuspiciousPackage-#{version}.dmg"
    sha256 "b8b038663f071ad55ea21ccf3a8aa09ae54a1bd1586a803e7e5413a1a3fecaae"
  elsif MacOS.version <= :sierra
    version "3.4.1"
    url "https://www.mothersruin.com/software/downloads/SuspiciousPackage-#{version}.dmg"
    sha256 "e4673a0c590e7dcb711789d98fcadd2283c2152d262b7809dfd8c8a1b3e9094b"
  elsif MacOS.version <= :high_sierra
    version "3.5.3"
    url "https://www.mothersruin.com/software/downloads/SuspiciousPackage-#{version}.dmg"
    sha256 "fad69db99a60058f8136954653fa2de81667f12cb731957a6d921d36ceaf195d"
  elsif MacOS.version <= :mojave
    version "4.0"
    url "https://www.mothersruin.com/software/downloads/SuspiciousPackage-#{version}.dmg"
    sha256 "844708fb75f8aa102f3ede8ddef3c20180f469b7bc8ec65bbc0370ce9f7db33c"
  else
    version "4.1,880"
    url "https://www.mothersruin.com/software/downloads/SuspiciousPackage.dmg"
    sha256 :no_check
  end

  name "Suspicious Package"
  desc "Application for inspecting installer packages"
  homepage "https://www.mothersruin.com/software/SuspiciousPackage/"

  livecheck do
    url "https://www.mothersruin.com/software/SuspiciousPackage/data/SuspiciousPackageVersionInfo.plist"
    regex(/CFBundleShortVersionString.*?\n.*?(\d+(?:\.\d+)*).*?\n.*?CFBundleVersion.*?\n.*?(\d+(?:\.\d+)*)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :yosemite"

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
