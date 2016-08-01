cask 'mplayerx' do
  version '1.1.3-1913'
  sha256 'd48abb4b42ecbde2ba99b6afcb0ae14cf3d5a160b758eeb3cb9c533ebe7bda58'

  # sourceforge.net/mplayerx-osx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/mplayerx-osx/MPlayerX-#{version}.zip"
  appcast 'https://raw.githubusercontent.com/niltsh/MPlayerX-Deploy/master/appcast.xml',
          checkpoint: '7700102d2f188a738b2e3f2524a2fcbd510c25708ea58bb2e8953ef337bc7355'
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
