cask 'helio' do
  version '2.0'
  sha256 'd84f3f2b7aae4d93b78392bf452b36c821c4237e13c5430effb26d23495928d2'

  url "https://ci.helio.fm/helio-#{version}.dmg"
  appcast 'https://github.com/helio-fm/helio-workstation/releases.atom'
  name 'Helio'
  homepage 'https://helio.fm/'

  app 'Helio.app'
end
