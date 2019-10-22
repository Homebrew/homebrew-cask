cask 'seafile-client' do
  version '7.0.2'
  sha256 'ff138f31047601d99b3a4b875c91eb1e4d1af717dad1d25a5ea2d91abde4509d'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  appcast 'https://www.seafile.com/en/download/'
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
