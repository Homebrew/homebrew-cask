cask "boxcryptor" do
  on_catalina :or_older do
    version "2.46.1667"
    sha256 "386defb15f934561541929ddfe9305fb6a44121b59804810f641b52986996a0b"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur do
    version "2.46.1668"
    sha256 "0cd09325a1bb9716cd56b67ca8c080d5d0e6ea77c2360cdf15d1368c4725869f"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "3.13.680"
    sha256 "b2f4ba62013636bd2db3685eb7c3d9dae3a919eee25b09945ccdc95a9146b05d"

    livecheck do
      url "https://www.boxcryptor.com/l/download-macosx"
      strategy :header_match
    end
  end

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  name "Boxcryptor"
  desc "Tool to encrypt files and folders in various cloud storage services"
  homepage "https://www.boxcryptor.com/en/"

  depends_on macos: ">= :catalina"

  app "Boxcryptor.app"

  uninstall delete: [
    "/Library/LaunchDaemons/com.boxcryptor.BCFS.Mounter.Helper.plist",
    "/Library/LaunchDaemons/com.boxcryptor.osx.PrivilegedHelper.plist",
    "/Library/PrivilegedHelperTools/com.boxcryptor.BCFS.Mounter.Helper",
    "/Library/PrivilegedHelperTools/com.boxcryptor.osx.PrivilegedHelper",
  ]

  zap trash: [
    "~/Library/Application Scripts/com.boxcryptor.osx.Rednif",
    "~/Library/Application Support/Boxcryptor",
    "~/Library/Application Support/com.boxcryptor.osx",
    "~/Library/Caches/com.boxcryptor.osx",
    "~/Library/Containers/com.boxcryptor.osx.Rednif",
    "~/Library/Logs/Boxcryptor",
    "~/Library/Preferences/com.boxcryptor.osx.plist",
  ]
end
