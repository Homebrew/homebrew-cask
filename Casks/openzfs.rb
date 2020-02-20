cask 'openzfs' do
  version '1.9.3.1,64'
  sha256 '8ba738c90445194dc8c8cdb69af8dce8e54b62a1068c7d3c08ccc37ab6722d5e'

  url "https://openzfsonosx.org/w/images/#{version.after_comma[0]}/#{version.after_comma}/OpenZFS_on_OS_X_#{version.before_comma}.dmg"
  name 'OpenZFS on OS X'
  homepage 'https://openzfsonosx.org/'

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
                      :el_capitan,
                      :sierra,
                      :high_sierra,
                      :mojave,
                      :catalina,
                    ]

  if MacOS.version == :el_capitan
    pkg "OpenZFS on OS X #{version.major_minor_patch} El Capitan.pkg"
  elsif MacOS.version == :sierra
    pkg "OpenZFS on OS X #{version.major_minor_patch} Sierra.pkg"
  elsif MacOS.version == :high_sierra
    pkg "OpenZFS on OS X #{version.major_minor_patch} High Sierra.pkg"
  elsif MacOS.version == :mojave
    pkg "OpenZFS on OS X #{version.major_minor_patch} Mojave.pkg"
  elsif MacOS.version == :catalina
    pkg "OpenZFS on OS X #{version.major_minor_patch} Catalina.pkg"
  end

  uninstall_preflight do
    uninstall_zfs = "#{staged_path}/Docs & Scripts/uninstall-openzfsonosx.sh"
    IO.write(uninstall_zfs, IO.read(uninstall_zfs).gsub('$(which zpool)', '/usr/local/bin/zpool'))
    IO.write(uninstall_zfs, IO.read(uninstall_zfs).gsub('$(which zfs)', '/usr/local/bin/zfs'))
    IO.write(uninstall_zfs, IO.read(uninstall_zfs).gsub('zpool status', '/usr/local/bin/zpool status'))
    IO.write(uninstall_zfs, IO.read(uninstall_zfs).gsub('zfs get name', '/usr/local/bin/zfs get name'))
    IO.write(uninstall_zfs, IO.read(uninstall_zfs).gsub('sudo /sbin/kextunload -b net.lundman.zfs',
                                                        'sudo /bin/launchctl unload /Library/LaunchDaemons/org.openzfsonosx.zed.plist && sudo /sbin/kextunload -b net.lundman.zfs'))
  end

  uninstall delete:    '~/zfsuninstaller.*',
            launchctl: 'org.openzfsonosx.zed',
            script:    {
                         executable: "#{staged_path}/Docs & Scripts/uninstall-openzfsonosx.sh",
                         sudo:       true,
                       }

  caveats do
    kext
  end
end
