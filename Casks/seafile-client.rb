cask 'seafile-client' do
  version '6.1.3'
  sha256 'd9484fe1ea53c2e34ca69614a07f39b03de012d9da800d71a9ac54a748a08b68'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
