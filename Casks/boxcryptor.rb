cask "boxcryptor" do
  if MacOS.version <= :catalina
    version "2.40.1233"
    sha256 "4320a2d2c5e5efdbbd4d29a5df076b9227ae00554a366ab7a43457da881bca35"
  else
    version "2.40.1234"
    sha256 "b4acc528180493292a964ca1db457bad4f0d56764d1826488cbae251c0398214"
  end

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  name "Boxcryptor"
  desc "Tool to encrypt files and folders in various cloud storage services"
  homepage "https://www.boxcryptor.com/en/"

  livecheck do
    url "https://www.boxcryptor.com/l/download-macosx"
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

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
