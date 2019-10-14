cask 'studio-3t' do
  version '2019.5.1'
  sha256 '383e32005abaae8517f1cf25c1450350497789a038e683d1a5380328935dc1b3'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
