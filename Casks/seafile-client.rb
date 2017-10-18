cask 'seafile-client' do
  version '6.1.1'
  sha256 'c6e25a7f3d493be193b1dcd0f7dccf431ed48d848c3f12d2a813c6347af80be9'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
