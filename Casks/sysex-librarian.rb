cask 'sysex-librarian' do
  version '1.3.1'
  sha256 '8c1c56a2161b33a8451324eb1c05b7ca9b56abaf713129c511af6357873df834'

  url "https://www.snoize.com/SysExLibrarian/SysExLibrarian_#{version.dots_to_underscores}.zip"
  appcast 'https://www.snoize.com/SysExLibrarian/SysExLibrarian.xml',
          checkpoint: 'a349dd3b6dc82daf740319832f0ee72c1380ecb244a791df50a462c5537bfed8'
  name 'SysEx Librarian'
  homepage 'https://www.snoize.com/SysExLibrarian/'

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
