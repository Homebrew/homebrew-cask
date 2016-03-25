cask 'mplayerx' do
  version '1.1.1-1887'
  sha256 '684dac670035dfd6e8dc539aabbf9cf35c537355b2fea1679e104c776398a055'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/mplayerx-osx/MPlayerX-#{version}.zip"
  appcast 'https://raw.githubusercontent.com/niltsh/MPlayerX-Deploy/master/appcast.xml',
          checkpoint: '8ce5a2bbcecf8e9955e161b91618ca840a24dfd5615671953cb3e70554d0bf76'
  name 'MPlayerX'
  homepage 'http://mplayerx.org/'
  license :oss

  app 'MPlayerX.app'

  zap delete: [
                '~/.mplayer',
                '~/Library/Application Support/MPlayerX',
                '~/Library/Preferences/org.niltsh.MPlayerX.LSSharedFileList.plist',
                '~/Library/Preferences/org.niltsh.MPlayerX.plist',
                '~/Library/Caches/org.niltsh.MPlayerX',
              ]
end
