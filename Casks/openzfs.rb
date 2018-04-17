cask 'openzfs' do
  version '1.7.2,ea'
  sha256 'b2deddbd0cf899db99c3c4dbd449101a881c744d3e2ab2c1f8bd6637296601ad'

  url "https://openzfsonosx.org/w/images/#{version.after_comma[0]}/#{version.after_comma}/OpenZFS_on_OS_X_#{version.before_comma}.dmg"
  name 'OpenZFS on OS X'
  homepage 'https://openzfsonosx.org/'

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
                      :mountain_lion,
                      :mavericks,
                      :yosemite,
                      :el_capitan,
                      :sierra,
                      :high_sierra,
                    ]

  if MacOS.version == :mountain_lion
    pkg "OpenZFS on OS X #{version.before_comma} Mountain Lion.pkg"
  elsif MacOS.version == :mavericks
    pkg "OpenZFS on OS X #{version.before_comma} Mavericks.pkg"
  elsif MacOS.version == :yosemite
    pkg "OpenZFS on OS X #{version.before_comma} Yosemite.pkg"
  elsif MacOS.version == :el_capitan
    pkg "OpenZFS on OS X #{version.before_comma} El Capitan.pkg"
  elsif MacOS.version == :sierra
    pkg "OpenZFS on OS X #{version.before_comma} Sierra.pkg"
  elsif MacOS.version == :high_sierra
    pkg "OpenZFS on OS X #{version.before_comma} High Sierra.pkg"
  end

  if MacOS.version >= :el_capitan
    uninstall_preflight do
      uninstall_zfs = "#{staged_path}/Docs & Scripts/uninstall-openzfsonosx.sh"
      IO.write(uninstall_zfs, IO.read(uninstall_zfs).gsub('$(which zpool)', '/usr/local/bin/zpool'))
      IO.write(uninstall_zfs, IO.read(uninstall_zfs).gsub('$(which zfs)', '/usr/local/bin/zfs'))
      IO.write(uninstall_zfs, IO.read(uninstall_zfs).gsub('zpool status', '/usr/local/bin/zpool status'))
      IO.write(uninstall_zfs, IO.read(uninstall_zfs).gsub('zfs get name', '/usr/local/bin/zfs get name'))
      IO.write(uninstall_zfs, IO.read(uninstall_zfs).gsub('sudo /sbin/kextunload -b net.lundman.zfs',
                                                          'sudo /bin/launchctl unload /Library/LaunchDaemons/org.openzfsonosx.zed.plist && sudo /sbin/kextunload -b net.lundman.zfs'))
    end
  end

  uninstall delete: '~/zfsuninstaller.*',
            script: {
                      executable: "#{staged_path}/Docs & Scripts/uninstall-openzfsonosx.sh",
                      sudo:       true,
                    }

  caveats do
    kext
  end
end
