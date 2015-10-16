cask :v1 => 'mplayerx' do
  version '1.1.0-1854'
  sha256 '6a32302dc47e3776039cbcdf68726ebabac3b8a07933d01a48bc3d2ad3827aaa'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/mplayerx-osx/MPlayerX-#{version}.zip"
  appcast 'https://raw.githubusercontent.com/niltsh/MPlayerX-Deploy/master/appcast.xml',
          :sha256 => 'cc1e62d278e41aa62080f5065608491ef7dcecbc259e3b53ab446fa48f05033d'
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
