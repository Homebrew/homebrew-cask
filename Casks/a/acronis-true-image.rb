cask "acronis-true-image" do
  version "29.1,41592"
  sha256 "304335d0e8e26bc46571e6926baf20da0f2d694f20a8728c7f220236d1ed29c2"

  url "https://dl.acronis.com/u/AcronisTrueImage_#{version.csv.second}.dmg"
  name "Acronis True Image"
  desc "Full image backup and cloning software"
  homepage "https://www.acronis.com/products/true-image/"

  livecheck do
    url "https://dl.acronis.com/u/liveupdate/%7B5D9634EB-1C51-4B57-BA9A-379CAF84E040%7D/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "Installer.pkg"

  uninstall pkgutil: "com.acronis.CyberProtectHomeOffice",
            delete:  "/Applications/Acronis True Image.app"

  zap delete: [
        "/Library/Application Support/Acronis",
        "/Library/Application Support/BackupClient",
        "/Library/PrivilegedHelperTools/com.acronis.helpertool",
      ],
      trash:  [
        "~/Library/Application Scripts/com.acronis.CyberProtectHomeOffice.FinderSyncExt",
        "~/Library/Application Support/Acronis",
        "~/Library/Containers/com.acronis.CyberProtectHomeOffice.FinderSyncExt",
        "~/Library/HTTPStorages/com.acronis.CyberProtectHomeOffice.monitor",
        "~/Library/Logs/Acronis",
        "~/Library/Preferences/com.acronis.CyberProtectHomeOffice.plist",
      ]
end
