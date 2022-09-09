cask "boxcryptor" do
  if MacOS.version <= :catalina
    version "2.46.1667"
    sha256 "386defb15f934561541929ddfe9305fb6a44121b59804810f641b52986996a0b"

    livecheck do
      url "https://www.boxcryptor.com/en/help/about/macos/"
      regex(/Download\s+v?(\d+(?:\.\d+)+)\s+for\s+macOS\s+10\.1[0-5]/i)
    end
  else
    version "3.8.254"
    sha256 "0d92ad402e9d117c373d5cff6c830a2e270d86712facbac217e779abe98da4ef"

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
