cask :v1 => 'nzbget' do
  version '15.0'
  sha256 'd4e6fa16d8404a2d1c1e6fe28e4bf4ca4f10d80cf53c724879867d82335167af'

  url "https://downloads.sourceforge.net/project/nzbget/nzbget-stable/#{version}/nzbget-#{version}-bin-osx.zip"
  name 'NZBGet'
  homepage 'https://nzbget.net'
  license :gpl

  app 'NZBGet.app'

  zap :delete => [
                  '~/Library/Application Support/NZBGet',
                  '~/Library/Preferences/net.sourceforge.nzbget.plist'
                 ]
end
