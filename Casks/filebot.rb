cask 'filebot' do
  version '4.7.5'
  sha256 '51f0fc6a992ee82ee05a7596a36b68f95e5f0306d6b35f5a767ab5aeeecb5e64'

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
