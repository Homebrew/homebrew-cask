cask 'sysex-librarian' do
  version :latest
  sha256 :no_check

  url 'https://www.snoize.com/SysExLibrarian/SysExLibrarian.zip'
  appcast 'https://www.snoize.com/SysExLibrarian/SysExLibrarian.xml',
          :sha256 => 'b2bf48b31196149f1d2e4cec64ff1903aadb39d419128d44fff9aa46ee626f8b'
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
