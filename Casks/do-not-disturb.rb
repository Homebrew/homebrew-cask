cask 'do-not-disturb' do
  version '1.2.2'
  sha256 '1e0e185b098c8dc764abcedd63eeab490af2b7c4b77445a87f37bf9e88b90d95'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/DoNotDisturb_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/DoNotDisturb.txt'
  name 'Do Not Disturb'
  homepage 'https://objective-see.com/products/dnd.html'

  depends_on macos: '>= :sierra'

  installer script: {
                      executable: "#{staged_path}/Do Not Disturb Installer.app/Contents/MacOS/Do Not Disturb Installer",
                      args:       ['-install'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: "#{staged_path}/Do Not Disturb Installer.app/Contents/MacOS/Do Not Disturb Installer",
                      args:       ['-uninstall'],
                      sudo:       true,
                    }
end
