cask "suspicious-package" do
  if MacOS.version <= :yosemite
    version "3.2"
    url "https://www.mothersruin.com/software/downloads/SuspiciousPackage-#{version}.dmg"
    sha256 "770db2942eb5132f3da5b064ce4471fa6e7aba75e46d6b91d7b10f620f81cce0"
  elsif MacOS.version <= :sierra
    version "3.4.1"
    url "https://www.mothersruin.com/software/downloads/SuspiciousPackage-#{version}.dmg"
    sha256 "a9c4da2cfe4a8f116594eb327d8d8754d47037c62f41bd81bd4f427307efe032"
  elsif MacOS.version <= :high_sierra
    version "3.5.3"
    url "https://www.mothersruin.com/software/downloads/SuspiciousPackage-#{version}.dmg"
    sha256 "2177e278cb8046c2151e72bb066822b6ed4e5e5b7e601643a3423360e3531b1d"
  elsif MacOS.version <= :mojave
    version "4.0"
    url "https://www.mothersruin.com/software/downloads/SuspiciousPackage-#{version}.dmg"
    sha256 "b224c8e4625ff818cc17e38cf001b9097f77d70938709e14e4ba598ba74a66c4"
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
