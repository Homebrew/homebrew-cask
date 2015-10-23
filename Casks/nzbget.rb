cask :v1 => 'nzbget' do
  version '16.1'
  sha256 '4ec71fa2dcd94c69520eda5c7f43d36e1ab49149bd8b79339da9d5e08f740c8e'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/nzbget/nzbget/releases/download/v#{version}/nzbget-#{version}-bin-osx.zip"
  appcast 'https://github.com/nzbget/nzbget/releases.atom'
  name 'NZBGet'
  homepage 'http://nzbget.net'
  license :gpl

  app 'NZBGet.app'

  zap :delete => [
                  '~/Library/Application Support/NZBGet',
                  '~/Library/Preferences/net.sourceforge.nzbget.plist'
                 ]
end
