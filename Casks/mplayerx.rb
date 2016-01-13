cask 'mplayerx' do
  version '1.1.1-1887'
  sha256 '684dac670035dfd6e8dc539aabbf9cf35c537355b2fea1679e104c776398a055'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/mplayerx-osx/MPlayerX-#{version}.zip"
  appcast 'https://raw.githubusercontent.com/niltsh/MPlayerX-Deploy/master/appcast.xml',
          :sha256 => 'c1d0ce3488c89219e8e3ba39f0348ea34b88c752d09b42c019fdc92f89f70383'
  name 'MPlayerX'
  homepage 'http://mplayerx.org/'
  license :oss

  app 'MPlayerX.app'

  zap :delete => [
                   '~/.mplayer',
                   '~/Library/Application Support/MPlayerX',
                   '~/Library/Preferences/org.niltsh.MPlayerX.LSSharedFileList.plist',
                   '~/Library/Preferences/org.niltsh.MPlayerX.plist',
                   '~/Library/Caches/org.niltsh.MPlayerX',
                 ]
end
