cask 'meteorologist' do
  version '3.0.2'
  sha256 '14cc28d247ea5c63b27e50f13005462c3d1c4fe43de2e195053e09b9db0764ed'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss',
          checkpoint: 'c049e545f0b588b45393211a66a4358cc18283992fb19706e2634dcf31b46876'
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'

  app 'Meteorologist.app'
end
