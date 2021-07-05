cask "suspicious-package" do
  version "3.7,773"
  sha256 :no_check

  url "https://www.mothersruin.com/software/downloads/SuspiciousPackage.dmg"
  name "Suspicious Package"
  desc "Application for inspecting installer packages"
  homepage "https://www.mothersruin.com/software/SuspiciousPackage/"

  livecheck do
    url "https://www.mothersruin.com/software/SuspiciousPackage/data/SuspiciousPackageVersionInfo.plist"
    strategy :page_match do |page|
      svs = page.match(/CFBundleShortVersionString.*?\n.*?(\d+(?:\.\d+)*)/i)
      bv = page.match(/CFBundleVersion.*?\n.*?(\d+(?:\.\d+)*)/i)
      "#{svs[1]},#{bv[1]}"
    end
  end

  depends_on macos: ">= :mojave"

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
