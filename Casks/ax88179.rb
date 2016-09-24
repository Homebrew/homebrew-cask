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
  license :gratis

  container nested: "#{Utils.basename(version)}/AX88179_178A.dmg"

  pkg "AX88179_178A_v#{version}.pkg"

  postflight do
    system '/usr/bin/sudo', '-E', '--',
           '/sbin/kextload', '-b', 'com.asix.driver.ax88179-178a'
  end

  uninstall early_script: {
                            executable: "#{staged_path}/AX88179_178A_Uninstall_v140",
                            sudo:       false,
                          },
            kext:         'com.asix.driver.ax88179-178a',
            pkgutil:      'com.asix.pkg.ax88179-178a*'
end
