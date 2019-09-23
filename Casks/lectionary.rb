cask 'lectionary' do
  version '1.18.1'
  sha256 '35b22975fbcfa83abdb89be80abf39315e5f60d26fb4200cb2bcd87a2bafa0df'

  url "https://myaccount.hymnsam.co.uk/PublicationRelatedFiles/21/Lectionary%20for%20Mac.#{version}.dmg"
  appcast 'https://www.chpublishing.co.uk/app/lectionary'
  name 'Lectionary'
  homepage 'https://www.chpublishing.co.uk/app/lectionary'

  app 'Lectionary.app'
end
