cask 'openzfs' do
  version '1.6.1,f8'
  sha256 '126ce9215ec060b2eb60db0609b29acad334f0d1c30c5ef2ab97cb251f374c39'

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
  end

  if MacOS.version >= :el_capitan
    uninstall_preflight do
      uninstall_zfs = "#{staged_path}/Docs & Scripts/uninstall-openzfsonosx.sh"
      IO.write(uninstall_zfs, IO.read(uninstall_zfs).gsub('/usr/sbin/zpool', '/usr/local/bin/zpool'))
      IO.write(uninstall_zfs, IO.read(uninstall_zfs).gsub('/usr/sbin/zfs', '/usr/local/bin/zfs'))
    end
  end

  uninstall delete: '~/zfsuninstaller.*',
            script: {
                      executable: "#{staged_path}/Docs & Scripts/uninstall-openzfsonosx.sh",
                      sudo:       true,
                    }
end
