cask :v1 => 'mplayerx' do
  version '1.1.1-1887'
  sha256 '684dac670035dfd6e8dc539aabbf9cf35c537355b2fea1679e104c776398a055'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/mplayerx-osx/MPlayerX-#{version}.zip"
  appcast 'https://raw.githubusercontent.com/niltsh/MPlayerX-Deploy/master/appcast.xml',
          :sha256 => 'cbdaba4814ef94eae9b25db2df4baf0e052e91040a568b6213b4d2a343ae27ef'
  name 'MPlayerX'
  homepage 'http://mplayerx.org/'
  license :oss

  app 'MPlayerX.app'

  zap :delete => [
                  '~/.mplayer',
                  '~/Library/Application Support/MPlayerX',
                  '~/Library/Preferences/org.niltsh.MPlayerX.LSSharedFileList.plist',
                  '~/Library/Preferences/org.niltsh.MPlayerX.plist',
                  '~/Library/Caches/org.niltsh.MPlayerX'
                 ]
end
