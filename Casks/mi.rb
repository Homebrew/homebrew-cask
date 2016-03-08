cask 'mi' do
  version '2.1.12r5'
  sha256 'f594e33451fd70cf16c36af205f59294609d910836a91c877e9d2f74261b5d38'

  url "http://www.mimikaki.net/download/mi#{version}.dmg"
  name 'Mi'
  homepage 'http://www.mimikaki.net/en/index.html'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'mi.app'
end
