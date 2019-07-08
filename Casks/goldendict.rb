cask 'goldendict' do
  version '1.5.0-RC2-372-gc3ff15f'
  sha256 'bc04acbd5db51d50b8b6262d69117304df96776472b7a1df7ad42dafafe573ff'

  url "https://sourceforge.net/projects/goldendict/files/early%20access%20builds/MacOS/GoldenDict-1.5.0-RC2-372-gc3ff15f%28Qt_5121%29.dmg/download"
  appcast 'https://github.com/goldendict/goldendict/wiki/Early-Access-Builds-for-Mac-OS-X'
  name 'GoldenDict'
  homepage 'http://goldendict.org/'

  app 'Visual Studio.app'

  zap trash: [
               '~/.goldendict',
               '~/Library/Saved Application State/org.goldendict.savedState',
             ]
end
