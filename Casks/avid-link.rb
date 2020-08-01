cask "avid-link" do
  version "20.6.0"
  sha256 "b1e354e91b5702937f068f7303c23c5e9cec4a0e72996f5321fc765e2fcd14ee"

  url "http://cdn.avid.com/AvidLink/20#{version.major_minor}/B0C4DA46/Avid_Link_#{version.major_minor}_Mac.dmg"
  name "Avid Link"
  homepage "https://www.avid.com/products/avid-link"

  auto_updates true

  pkg "AvidLink_Installer.pkg"

  uninstall quit:   "com.avid.link",
            script: {
              executable:   "#{appdir}/Avid_Uninstallers/Avid Link/Avid Link Uninstaller.app/Contents/MacOS/AvidUninstaller",
              args:         ["-no-gui", "-all"],
              sudo:         true,
              must_succeed: true,
            },
            delete: [
              "/Applications/Avid/Application Manager/",
              "/Library/Logs/Avid/AppManagerHelper/",
              "/Library/Logs/Avid/AppManagerUI/",
            ]

  zap trash: [
    "~/Library/Application Support/Avid Link/",
    "~/Library/Application Support/AvidLink/",
    "~/Library/Application Support/Avid Technology/AvidLink/",
    "~/Library/Preferences/com.avid.Avid Link.plist",
    "~/Library/Preferences/com.avid.link.plist",
    "~/Library/Caches/Avid/Avid Link/",
    "~/Library/Caches/Avid Technology/Avid Link/",
  ]
end
