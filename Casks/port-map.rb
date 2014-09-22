class PortMap < Cask
  version '1.3.1-r46'
  sha256 '50e29f121139ee2f68ad978cb3921ef52f2dbfb5a0131c417516e4e5f1fa64af'

  url 'https://tcmportmapper.googlecode.com/files/PortMap-1.3.1-r46.zip'
  appcast 'http://www.codingmonkeys.de/portmap/appcast.rss'
  homepage 'http://www.codingmonkeys.de/portmap'

  app 'Port Map.app'
end
