cask 'sequel-pro' do
  version '1.1.0.1'
  sha256 '9b9de84daefb258e57695d035971c2a8fb985c206a8f136de57d3badbf51718d'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/sequelpro/sequelpro/releases/download/release-#{version}/sequel-pro-#{version}.dmg"
  appcast 'https://github.com/sequelpro/sequelpro/releases.atom',
          checkpoint: '13a9846bd10fcf63a777fb854cdbdff4b370055c8004f73c31efba32644ea595'
  name 'Sequel Pro'
  homepage 'http://www.sequelpro.com/'
  license :mit

  depends_on macos: '>= :leopard'

  app 'Sequel Pro.app'

  zap delete: '~/Library/Application Support/Sequel Pro/Data'
end
