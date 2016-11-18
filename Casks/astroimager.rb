cask 'astroimager' do
  version '2.4'
  sha256 '56d11b7fbc9937369677e708b88f5e7835ba31013c7f2deec45da8dc6823773e'

  url "http://download.cloudmakers.eu/AstroImager_#{version}.dmg"
  name 'AstroImager'
  homepage 'http://www.cloudmakers.eu'

  app 'AstroImager.app'
end
