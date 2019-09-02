cask 'phiewer' do
  version '2.0.3'
  sha256 'b9ef9894d6ee079ef44d8df07a4e261996ab1e9a723ca807b637711fa17cee61'

  url "https://phiewer.com/wp-content/uploads/Phiewer-#{version}.dmg"
  appcast 'https://phiewer.com/changelog/'
  name 'Phiewer'
  homepage 'https://phiewer.com/'

  app 'Phiewer.app'
end
