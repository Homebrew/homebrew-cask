cask 'jami' do
  version '20191031.1729'
  sha256 '2c5f53270cb5e6ab64a6f4af026d82e9cb35714c086797697bd5e131c6df961f'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
