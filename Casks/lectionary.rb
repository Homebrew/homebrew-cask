cask 'lectionary' do
  version '1.18.0'
  sha256 'a277f81dc20a2dbd62abf36c81501ceb1939974cf8ed1a0e0defeb53c5aac8b9'

  url "https://myaccount.hymnsam.co.uk/PublicationRelatedFiles/21/Lectionary%20for%20Mac.#{version}.dmg"
  appcast 'https://www.chpublishing.co.uk/app/lectionary'
  name 'Lectionary'
  homepage 'https://www.chpublishing.co.uk/app/lectionary'

  app 'Lectionary.app'
end
