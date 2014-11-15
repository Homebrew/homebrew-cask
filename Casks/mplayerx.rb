cask :v1 => 'mplayerx' do
  version '1.0.22.1'
  sha256 '08ce85671814e65b8c7ec8438b85be593b6deaf7d5c3b242e686a6b0176a2c77'

  url "https://downloads.sourceforge.net/project/mplayerx-osx/MPlayerX-#{version}.zip"
  homepage 'http://mplayerx.org/'
  license :oss

  app 'MPlayerX.app'

  zap :delete => '~/.mplayer'
end
