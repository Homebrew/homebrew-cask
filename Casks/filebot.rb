cask 'filebot' do
  version '4.7.9'
  sha256 'bae8ec7ee51f3c11b8c190c14199c42a299d72755dd9e14763ca87189dd1d687'

  # sourceforge.net/filebot was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filebot/filebot/FileBot_#{version}/FileBot_#{version}-darwin.tar.xz"
  appcast 'https://app.filebot.net/update.xml',
          checkpoint: 'cfc707d5378dd6e9ca479a4d20f92801e4a18ce326909ff31b99d417649a4fae'
  name 'FileBot'
  homepage 'https://www.filebot.net/'

  # The darwin package only includes the CLI tools. Launching the app bundle merely redirects to the Mac App Store.
  binary 'FileBot.app/Contents/MacOS/filebot.sh', target: 'filebot'

  zap delete: '~/Library/Preferences/net.filebot.ui.plist'

  caveats do
    depends_on_java('8')
  end
end
