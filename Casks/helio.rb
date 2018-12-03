cask 'helio' do
  version '1.7.6'
  sha256 '7f0499eb9266e65f3535795c20b18b82bf926a9966f757ea1a5854d861e8cfa6'

  url "https://ci.helio.fm/helio-#{version}.dmg"
  name 'Helio'
  homepage 'https://helio.fm/'

  app 'Helio.app'
end
