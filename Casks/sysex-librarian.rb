cask :v1 => 'sysex-librarian' do
  version :latest
  sha256 :no_check

  url 'http://www.snoize.com/SysExLibrarian/SysExLibrarian.zip'
  appcast 'http://www.snoize.com/SysExLibrarian/SysExLibrarian.xml'
  name 'SysEx Librarian'
  homepage 'http://www.snoize.com/SysExLibrarian'
  license :bsd

  app 'SysEx Librarian.app'

  uninstall :quit => [
                      'com.snoize.SnoizeMIDI',
                      'com.snoize.SysExLibrarian'
                     ]

  zap :delete => [
                  '~/Library/Preferences/com.snoize.SysExLibrarian.plist',
                  '~/Library/Caches/com.snoize.SysExLibrarian',
                  '~/Library/Saved Application State/com.snoize.SysExLibrarian.savedState'
                 ]

  depends_on :macos => '>= :lion'
end
