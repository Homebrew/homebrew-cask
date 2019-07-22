cask 'helio' do
  version '2.2'
  sha256 'fb20994c6ce5a86a74260066c46f7b96822df4b1d632218f855893514e946dda'

  url "https://ci.helio.fm/helio-#{version}.dmg"
  appcast 'https://github.com/helio-fm/helio-workstation/releases.atom'
  name 'Helio'
  homepage 'https://helio.fm/'

  app 'Helio.app'
end
