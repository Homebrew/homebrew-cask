cask 'sysex-librarian' do
  version :latest
  sha256 :no_check

  url 'https://www.snoize.com/SysExLibrarian/SysExLibrarian.zip'
  appcast 'https://www.snoize.com/SysExLibrarian/SysExLibrarian.xml',
          :checkpoint => '5932ad75281f34f7ed7dda012b8cabb61b0c9c95acf4f0429c06fdc6a41e34aa'
  name 'SysEx Librarian'
  homepage 'http://www.snoize.com/SysExLibrarian'
  license :bsd

  depends_on :macos => '>= :lion'

  app 'SysEx Librarian.app'

  uninstall :quit => [
                       'com.snoize.SnoizeMIDI',
                       'com.snoize.SysExLibrarian',
                     ]

  zap :delete => [
                   '~/Library/Preferences/com.snoize.SysExLibrarian.plist',
                   '~/Library/Caches/com.snoize.SysExLibrarian',
                   '~/Library/Saved Application State/com.snoize.SysExLibrarian.savedState',
                 ]
end
