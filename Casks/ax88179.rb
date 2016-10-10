cask 'ax88179' do
  version '2.8.0_20160912'
  sha256 '91dc9e76f4808d515c6c764be1d03dddf820b4050eba83a1e1d139541f5bf027'

  module Utils
    def self.basename(version)
      "AX88179_178A_Macintosh_10.6_to_10.12_Driver_Installer_v#{version}"
    end
  end

  url "http://www.asix.com.tw/FrootAttach/driver/#{Utils.basename(version)}.zip"
  name 'AX88179'
  homepage 'http://www.asix.com.tw/download.php?sub=driverdetail&PItemID=131'

  pkg "AX88179_178A_v#{version.sub(%r{_.*}, '')}.pkg"

  # HACK: DMG needs to be extracted manually because it is using an MBR partition table.
  preflight do
    begin
      dmg_mount = `/usr/bin/hdiutil mount -readonly -noidme -nobrowse -mountrandom /tmp '#{staged_path.join(Utils.basename(version), 'AX88179_178A.dmg')}' | /usr/bin/cut -f3 -- - | /usr/bin/grep -- '.' -`.chop
      FileUtils.cp(Dir.glob("#{dmg_mount}/AX*"), staged_path)
    ensure
      system "/usr/bin/hdiutil eject '#{dmg_mount}' >/dev/null 2>&1"
    end
  end

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
