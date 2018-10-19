cask 'funter' do
  version '4.3b79'
  sha256 'd5b7ba9d8dd48581875dacdcfc9e521b518e19256fe6e5d51366f14fb6f3db79'

  url "https://nektony.com/promo/funter/update/update_#{version}.zip"
  appcast 'https://nektony.com/promo/funter/update/update.xml'
  name 'Funter'
  homepage 'https://nektony.com/products/funter'

  app 'Funter.app'
end
