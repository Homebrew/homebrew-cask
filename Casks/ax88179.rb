cask 'ax88179' do
  version '2.8.0'
  sha256 '4231136a1756f864dfad506497703dd48a2d95503a91914d98f9a12c129ef3a1'

  module Utils
    def self.basename(version)
      "AX88179_178A_Macintosh_10.6_to_10.11_Driver_Installer_v#{version}"
    end
  end

  url "http://www.asix.com.tw/FrootAttach/driver/#{Utils.basename(version)}.zip"
  name 'AX88179'
  homepage 'http://www.asix.com.tw/download.php?sub=driverdetail&PItemID=131'
  license :closed

  container nested: "#{Utils.basename(version)}/AX88179_178A.dmg"

  pkg "AX88179_178A_v#{version}.pkg"

  uninstall script: { executable: 'AX88179_178A_Uninstall_v140' }

  caveats "The AX88179 contains a kext module.
  Either reboot or issue 'sudo kextload /Library/Extensions/AX88179_178A.kext' to load the driver"
end
