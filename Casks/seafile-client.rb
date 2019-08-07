cask 'seafile-client' do
  version '7.0.0'
  sha256 '9cba1ccfb91fa8289bb49f91120d58eac9e8a86bb374aa1534247329f2d0935d'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  appcast 'https://www.seafile.com/en/download/'
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
