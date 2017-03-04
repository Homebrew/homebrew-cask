cask 'astroimager' do
  version '2.6'
  sha256 'c2e5198ead29a41c5a5be649ba41b6578f80f2fed1c4625b8fdab7f2452fd320'

  url "http://download.cloudmakers.eu/AstroImager_#{version}.dmg"
  name 'AstroImager'
  homepage 'http://www.cloudmakers.eu/'

  app 'AstroImager.app'
end
