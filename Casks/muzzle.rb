cask 'muzzle' do
  version '1.1'
  sha256 '59b827bd397892b405dfbb16d0c737829f54c14f7664af7d8e32989190d4bff4'

  url 'https://muzzleapp.com/binaries/muzzle.zip'
  appcast 'https://muzzleapp.com/api/1/appcast.xml',
          checkpoint: 'ab8abd15c2bfcad026506b3518883b4e5ef2eab50ec40e9c6bc9c3b012a56319'
  name 'Muzzle'
  homepage 'https://muzzleapp.com/'

  app 'Muzzle.app'
end
