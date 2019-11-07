cask 'openzfs' do
  version '1.9.3,88'
  sha256 '926e7c17d9b798dc176d4927083c921a8b7ef32952f90a40d26391c1ecdcb6bd'

  url "https://openzfsonosx.org/w/images/#{version.after_comma[0]}/#{version.after_comma}/OpenZFS_on_OS_X_#{version.before_comma}.dmg"
  name 'OpenZFS on OS X'
  homepage 'https://openzfsonosx.org/'

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
                      :sierra,
                      :high_sierra,
                      :mojave,
                      :catalina,
                    ]

  if MacOS.version == :sierra
    pkg "OpenZFS on OS X #{version.before_comma} Sierra.pkg"
  elsif MacOS.version == :high_sierra
    pkg "OpenZFS on OS X #{version.before_comma} High Sierra.pkg"
  elsif MacOS.version == :mojave
    pkg "OpenZFS on OS X #{version.before_comma} Mojave.pkg"
  elsif MacOS.version == :catalina
    pkg "OpenZFS on OS X #{version.before_comma} Catalina.pkg"
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
