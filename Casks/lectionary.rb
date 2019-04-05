cask 'lectionary' do
  version '1.17.2'
  sha256 '0c2176d61e30c97bced2cbd897fccac94a209fe477ef748f3c95e3f1d6de1450'

  url "https://myaccount.hymnsam.co.uk/PublicationRelatedFiles/21/Lectionary%20for%20Mac.#{version}.dmg"
  name 'Lectionary'
  homepage 'https://www.chpublishing.co.uk/app/lectionary'

  app 'Lectionary.app'
end
