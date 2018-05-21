cask 'mi' do
  version '2.1.12r5'
  sha256 'f594e33451fd70cf16c36af205f59294609d910836a91c877e9d2f74261b5d38'

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  name 'Mi'
  homepage 'https://www.mimikaki.net/'

  app 'mi.app'
end
