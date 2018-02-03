cask 'seafile-client' do
  version '6.1.4'
  sha256 'dc69d0ceb0191c31d3178b5cf96aef4172fbead904b85ab6dd729937deeaf792'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
