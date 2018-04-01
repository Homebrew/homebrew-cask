cask 'astroimager' do
  version '2.7'
  sha256 'a4f08f24119e1f59d01d18b49c0f0d2a43c4f4190580c9c6827b87fba9353257'

  url "http://download.cloudmakers.eu/AstroImager_#{version}.dmg"
  name 'AstroImager'
  homepage 'http://www.cloudmakers.eu/'

  app 'AstroImager.app'
end
