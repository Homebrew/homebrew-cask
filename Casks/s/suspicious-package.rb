cask "suspicious-package" do
  on_ventura :or_older do
    on_big_sur :or_older do
      version "4.3.3"
      sha256 "a262c317ad2d6949e0d0f2bec9524a4a85e0e69d6aec0373cf185892acac1f69"
    end
    on_monterey :or_newer do
      version "4.6.2"
      sha256 "9bcd1c8169458fa4e370c1f2ea6c2f98ecd6dbafe9cfa71f9fce032a0d1b57bc"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "4.7"
    sha256 "5b8215b7a6536d1d41f1a3485e3428b39f8d3d0f2471ab1a0c69bedb22df4e5b"

    livecheck do
      url "https://www.mothersruin.com/software/SuspiciousPackage/data/SuspiciousPackageVersionInfo.plist"
      strategy :xml do |xml|
        short_version = xml.elements["//key[text()='CFBundleShortVersionString']"]&.next_element&.text
        next if short_version.blank?

        short_version.strip
      end
    end
  end

  url "https://www.mothersruin.com/software/archives/SuspiciousPackage-#{version}.dmg"
  name "Suspicious Package"
  desc "Application for inspecting installer packages"
  homepage "https://www.mothersruin.com/software/SuspiciousPackage/"

  depends_on :macos

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
