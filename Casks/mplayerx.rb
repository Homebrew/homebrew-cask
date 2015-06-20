cask :v1 => 'mplayerx' do
  version :latest
  sha256 :no_check

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/mplayerx-osx/MPlayerX-Latest.zip"
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
