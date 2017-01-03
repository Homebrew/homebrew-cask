cask 'filebot' do
  version '4.7.7'
  sha256 'ee5b74db11b6bc3a3a5fba167fce33d45c0479fca5d2f9a6426bac5be6b9fc67'

  # sourceforge.net/filebot was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filebot/filebot/FileBot_#{version}/FileBot_#{version}-darwin.tar.xz"
  appcast 'https://app.filebot.net/update.xml',
          checkpoint: '10b885da024848f3d58be9b54f44088aa2dd3f7e714a8b0e3bbef96f2824bb2c'
  name 'FileBot'
  homepage 'https://www.filebot.net/'

  # The darwin package only includes the CLI tools. Launching the app bundle merely redirects to the Mac App Store.
  binary 'FileBot.app/Contents/MacOS/filebot.sh', target: 'filebot'

  zap delete: '~/Library/Preferences/net.filebot.ui.plist'

  caveats do
    depends_on_java('8')
  end
end
