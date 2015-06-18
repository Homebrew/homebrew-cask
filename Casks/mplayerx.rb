cask :v1 => 'mplayerx' do
  version '1.0.22.1'
  sha256 '08ce85671814e65b8c7ec8438b85be593b6deaf7d5c3b242e686a6b0176a2c77'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/mplayerx-osx/MPlayerX-#{version}.zip"
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
