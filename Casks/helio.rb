cask 'helio' do
  version '2.3'
  sha256 '4f898c06d00769347cd7c27035752e220cfe38cd11e2101ee29a953b15481272'

  url "https://ci.helio.fm/helio-#{version}.dmg"
  appcast 'https://github.com/helio-fm/helio-workstation/releases.atom'
  name 'Helio'
  homepage 'https://helio.fm/'

  app 'Helio.app'
end
