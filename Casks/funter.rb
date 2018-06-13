cask 'funter' do
  version '4.1'
  sha256 '1faaad4f2882116cb13715750c3b6fb00d1a0c281b7a67c9ab81ab1ddb5d65eb'

  url "https://nektony.com/promo/funter/update/funter_v#{version}.zip"
  appcast 'https://nektony.com/promo/funter/update/update.xml'
  name 'Funter'
  homepage 'https://nektony.com/products/funter'

  app 'Funter.app'
end
