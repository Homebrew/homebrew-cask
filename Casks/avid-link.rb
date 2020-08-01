cask "avid-link" do
  version "2020.6"
  sha256 "b1e354e91b5702937f068f7303c23c5e9cec4a0e72996f5321fc765e2fcd14ee"

  url "http://cdn.avid.com/AvidLink/#{version}/B0C4DA46/Avid_Link_#{version[2..]}_Mac.dmg"
  # avid.secure.force.com was verified as official when first introduced to the cask
  appcast "https://avid.secure.force.com/pkb/articles/en_US/User_Guide/Avid-Link-Documentation"
  name "Avid Link"
  homepage "https://www.avid.com/products/avid-link"

  auto_updates true

  pkg "AvidLink_Installer.pkg"

  uninstall_script = "#{appdir}/Avid_Uninstallers/Avid Link/Avid Link Uninstaller.app/Contents/MacOS/AvidUninstaller"

  uninstall launchctl: "com.avid.AvidLink.uninstall.HelperTool",
            script:    {
              executable:   uninstall_script.to_s,
              args:         ["-no-gui", "-all"],
              sudo:         true,
              must_succeed: true,
            },
            delete:    [
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

  caveats do
    license "https://www.avid.com/legal/end-user-license-terms-for-avid-software"
  end
end
