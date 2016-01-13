cask 'sysex-librarian' do
  version :latest
  sha256 :no_check

  url 'https://www.snoize.com/SysExLibrarian/SysExLibrarian.zip'
  appcast 'https://www.snoize.com/SysExLibrarian/SysExLibrarian.xml',
          :checkpoint => '4f30ab1b477eba22265001b7c92990930b29e5a43c78ba37a7b83cf9a42e4a90'
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
