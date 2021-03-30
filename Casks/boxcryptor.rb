cask "boxcryptor" do
  if MacOS.version <= :catalina
    version "2.38.1090"
    sha256 "974d097017bdc1377a62fa4e9e51033636198659fc9353372233cde0e5094285"
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
