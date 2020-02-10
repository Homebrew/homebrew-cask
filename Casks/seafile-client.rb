cask 'seafile-client' do
  version '7.0.5'
  sha256 'c100fab26d3613fe9aaed4a3bdd1ea7b47f10d17bbde9c5027f50977ccfcb900'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  appcast 'https://www.seafile.com/en/download/'
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
