cask 'filebot' do
  version '4.7.8'
  sha256 'd58c699ecd47a6f9cec2226acf11a01bb57c07ac093eaaed31c5bc4cdda7c7b7'

  # sourceforge.net/filebot was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filebot/filebot/FileBot_#{version}/FileBot_#{version}-darwin.tar.xz"
  appcast 'https://app.filebot.net/update.xml',
          checkpoint: '47b0253c28bac7d5182b615cd80c8cec9f67d59b697d9331e1f1c74cdae78c6c'
  name 'FileBot'
  homepage 'https://www.filebot.net/'

  # The darwin package only includes the CLI tools. Launching the app bundle merely redirects to the Mac App Store.
  binary 'FileBot.app/Contents/MacOS/filebot.sh', target: 'filebot'

  zap delete: '~/Library/Preferences/net.filebot.ui.plist'

  caveats do
    depends_on_java('8')
  end
end
