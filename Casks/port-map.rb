cask :v1 => 'port-map' do
  version :latest
  sha256 :no_check

  url 'http://www.codingmonkeys.de/portmap/download'
  appcast 'http://www.codingmonkeys.de/portmap/appcast.rss',
          :sha256 => 'c74b6bc407fe3a5daea1f3be09deabef3590fa5dc63c8ed32062f97d8bf5aa79'
  name 'Port Map'
  homepage 'http://www.codingmonkeys.de/portmap'
  license :mit

  depends_on :macos => '>= :tiger'

  app 'Port Map.app'
end
