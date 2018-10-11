cask 'funter' do
  version '4.2'
  sha256 'f6a06b1a5a8a6356e24781324669b6f41318c65481e191e1a6c49c34e7ec0596'

  url "https://nektony.com/promo/funter/update/funter_v#{version}.zip"
  appcast 'https://nektony.com/promo/funter/update/update.xml'
  name 'Funter'
  homepage 'https://nektony.com/products/funter'

  app 'Funter.app'
end
