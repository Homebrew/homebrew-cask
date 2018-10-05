cask 'muzzle' do
  version '1.4'
  sha256 '5c3b608f836878aba78a01ee69d2efd4951b644b5f21075648d10ad04223b9fb'

  url 'https://muzzleapp.com/binaries/muzzle.zip'
  appcast 'https://muzzleapp.com/api/1/appcast.xml'
  name 'Muzzle'
  homepage 'https://muzzleapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Muzzle.app'
end
