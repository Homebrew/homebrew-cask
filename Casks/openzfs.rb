cask 'openzfs' do
  version '1.7.1,fb'
  sha256 '49c6bb76f8ba9196f9c3ea34d0f7adce8db643c4c4a3d0280a22e614d02ac3f0'
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

  uninstall delete: '~/zfsuninstaller.*',
            script: {
                      executable: "#{staged_path}/Docs & Scripts/uninstall-openzfsonosx.sh",
                      sudo:       true,
                    }

  caveats do
    kext
  end
end
