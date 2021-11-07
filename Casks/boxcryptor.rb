cask "boxcryptor" do
  if MacOS.version <= :catalina
    version "2.42.1436"
    sha256 "894e3d5dcee1454ef4259cd45eb4828dcda806d229630e66c2b0c10fca5c7e3a"

    livecheck do
      url "https://www.boxcryptor.com/en/help/about/macos/"
      regex(/Download\s+v?(\d+(?:\.\d+)+)\s+for\s+macOS\s+10\.1[0-5]/i)
    end
  else
    version "2.43.1465"
    sha256 "71b1eea3523110dbd622c560f09a19b7c264a79869eb01249c541233806cbebc"

    livecheck do
      url "https://www.boxcryptor.com/l/download-macosx"
      strategy :header_match
    end
  end

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  name "Boxcryptor"
  desc "Tool to encrypt files and folders in various cloud storage services"
  homepage "https://www.boxcryptor.com/en/"

  depends_on macos: ">= :mojave"

  app "Boxcryptor.app"

  zap trash: [
    "~/Library/Application Scripts/com.boxcryptor.osx.Rednif",
    "~/Library/Application Support/Boxcryptor",
    "~/Library/Application Support/com.boxcryptor.osx",
    "~/Library/Caches/com.boxcryptor.osx",
    "~/Library/Containers/com.boxcryptor.osx.Rednif",
    "~/Library/Logs/Boxcryptor",
    "~/Library/Preferences/com.boxcryptor.osx.plist",
    "/Library/LaunchDaemons/com.boxcryptor.BCFS.Mounter.Helper.plist",
    "/Library/LaunchDaemons/com.boxcryptor.osx.PrivilegedHelper.plist",
    "/Library/PrivilegedHelperTools/com.boxcryptor.BCFS.Mounter.Helper",
    "/Library/PrivilegedHelperTools/com.boxcryptor.osx.PrivilegedHelper",
  ]
end
