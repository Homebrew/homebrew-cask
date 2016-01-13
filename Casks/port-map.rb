cask 'port-map' do
  version :latest
  sha256 :no_check

  url 'http://www.codingmonkeys.de/portmap/download'
  appcast 'https://www.codingmonkeys.de/portmap/appcast.rss',
          :checkpoint => 'a38f4002c10dfa37b46014d8e9607fcdb02cf938910047090e11f037dddf2208'
  name 'Port Map'
  homepage 'https://www.codingmonkeys.de/portmap'
  license :mit

  depends_on :macos => '>= :tiger'

  app 'Port Map.app'
end
