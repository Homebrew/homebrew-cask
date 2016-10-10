cask 'sysex-librarian' do
  version '1.3.1'
  sha256 '8c1c56a2161b33a8451324eb1c05b7ca9b56abaf713129c511af6357873df834'

  url "https://www.snoize.com/SysExLibrarian/SysExLibrarian_#{version.dots_to_underscores}.zip"
  appcast 'https://www.snoize.com/SysExLibrarian/SysExLibrarian.xml',
          checkpoint: '5932ad75281f34f7ed7dda012b8cabb61b0c9c95acf4f0429c06fdc6a41e34aa'
  name 'SysEx Librarian'
  homepage 'https://www.snoize.com/SysExLibrarian'

  depends_on macos: '>= :lion'

  app 'SysEx Librarian.app'

  uninstall quit: [
                    'com.snoize.SnoizeMIDI',
                    'com.snoize.SysExLibrarian',
                  ]

  zap delete: [
                '~/Library/Preferences/com.snoize.SysExLibrarian.plist',
                '~/Library/Caches/com.snoize.SysExLibrarian',
                '~/Library/Saved Application State/com.snoize.SysExLibrarian.savedState',
              ]
end
