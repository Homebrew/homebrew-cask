cask 'lectionary' do
  version '1.18.1.1'
  sha256 '8a19a62c80ccaeb56baaff12cb3e382ebd65185a1400995d8a1a129c086535e9'

  url "https://myaccount.hymnsam.co.uk/PublicationRelatedFiles/21/Lectionary%20for%20Mac.#{version}.dmg"
  appcast 'https://www.chpublishing.co.uk/app/lectionary'
  name 'Lectionary'
  homepage 'https://www.chpublishing.co.uk/app/lectionary'

  app 'Lectionary.app'
end
