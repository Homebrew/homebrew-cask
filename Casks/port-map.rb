cask :v1 => 'port-map' do
  version '1.3.1-r46'
  sha256 '50e29f121139ee2f68ad978cb3921ef52f2dbfb5a0131c417516e4e5f1fa64af'

  url "https://tcmportmapper.googlecode.com/files/PortMap-#{version}.zip"
  appcast 'http://www.codingmonkeys.de/portmap/appcast.rss',
          :sha256 => 'c74b6bc407fe3a5daea1f3be09deabef3590fa5dc63c8ed32062f97d8bf5aa79'
  homepage 'http://www.codingmonkeys.de/portmap'
  license :oss

  app 'Port Map.app'
end
