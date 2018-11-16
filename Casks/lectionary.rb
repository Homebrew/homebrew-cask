cask 'lectionary' do
  version '1.17.1'
  sha256 '1420c2a7d206d6a6b39e703a2bb0b8f5fc2683f40abd2842fd18f63e2fa48ef3'

  url "https://myaccount.hymnsam.co.uk/PublicationRelatedFiles/21/Lectionary%20for%20Mac.#{version}.dmg"
  name 'Lectionary'
  homepage 'https://www.chpublishing.co.uk/app/lectionary'

  app 'Lectionary.app'
end
