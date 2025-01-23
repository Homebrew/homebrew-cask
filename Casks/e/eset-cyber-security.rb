cask "eset-cyber-security" do
  version "8.2.3000.0"
  sha256 "f637b06bafdc8743c936cf37bf64770d1eb7fd128b7dd06fa4ff7d54acaff91e"

  url "https://download.eset.com/com/eset/apps/home/eav/mac/v#{version.major}/#{version}/eset_cybersecurity.dmg"
  name "ESET Cyber Security"
  desc "Security including web and email protection"
  homepage "https://www.eset.com/"

  livecheck do
    url "https://help.eset.com/latestVersions/"
    regex(%r{ESET\sCyber\sSecurity</p>\n.*/span>\sv?(\d+(?:\.\d+)+)}i)
  end

  depends_on macos: ">= :big_sur"

  pkg "Resources/Installer.pkg"

  uninstall script:  {
              executable: "/Applications/ESET Cyber Security.app/Contents/Helpers/Uninstaller.app/Contents/Scripts/uninstall.sh",
              sudo:       true,
            },
            pkgutil: "com.eset.protection"

  zap trash: "~/Library/Preferences/com.eset.ecs.*.plist"
end
