cask "suspicious-package" do
  on_big_sur :or_older do
    on_catalina :or_older do
      version "4.2.1"
      sha256 "5c05df9bf3d56758a3eefa972597e3138afdea4c3774f91fe2849482b7112823"
    end
    on_big_sur do
      version "4.3.3"
      sha256 "a262c317ad2d6949e0d0f2bec9524a4a85e0e69d6aec0373cf185892acac1f69"
    end

    url "https://www.mothersruin.com/software/downloads/SuspiciousPackage-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "4.6,1311"
    sha256 :no_check

    url "https://www.mothersruin.com/software/downloads/SuspiciousPackage.dmg"

    livecheck do
      url "https://www.mothersruin.com/software/SuspiciousPackage/data/SuspiciousPackageVersionInfo.plist"
      strategy :xml do |xml|
        short_version = xml.elements["//key[text()='CFBundleShortVersionString']"]&.next_element&.text
        version = xml.elements["//key[text()='CFBundleVersion']"]&.next_element&.text
        next if short_version.blank? || version.blank?

        "#{short_version.strip},#{version.strip}"
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
