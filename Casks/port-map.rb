cask 'port-map' do
  version :latest
  sha256 :no_check

  url 'http://www.codingmonkeys.de/portmap/download'
  appcast 'https://www.codingmonkeys.de/portmap/appcast.rss',
          :checkpoint => '0363c9622ad7c674c403b2dbca4923e0e0318d65814ec324974180a4d3075eae'
  name 'Port Map'
  homepage 'https://www.codingmonkeys.de/portmap'
  license :mit

  depends_on :macos => '>= :tiger'

  app 'Port Map.app'
end
