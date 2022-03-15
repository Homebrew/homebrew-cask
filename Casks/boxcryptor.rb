cask "boxcryptor" do
  if MacOS.version <= :catalina
    version "2.44.1601"
    sha256 "e6e5c56b5b9d508206eb5cc5fed5bb9e32eca8269cd45960084d3e9110e9699b"

    livecheck do
      url "https://www.boxcryptor.com/en/help/about/macos/"
      regex(/Download\s+v?(\d+(?:\.\d+)+)\s+for\s+macOS\s+10\.1[0-5]/i)
    end
  else
    version "2.45.1655"
    sha256 "eb389e6d75f114f4d6cd174f090ac48c4c17cda96c337a0ce89723067b69d0c8"

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
