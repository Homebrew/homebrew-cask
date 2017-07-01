cask 'seafile-client' do
  version '6.0.7'
  sha256 'aeeb6b25be731f7d95691a84ac5ead05fd3adad6738ab56d9ef1927e285b1df0'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
