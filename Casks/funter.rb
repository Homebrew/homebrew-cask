cask 'funter' do
  if MacOS.version <= :sierra
    version '4.1b64'
    sha256 'b059000717f7f8af67ee027d81aea6c2d9f343e0eb72e439a9f286ab265b7b93'
    url 'https://nektony.com/download/funter/funter_10.12.dmg'
  else
    version '4.3b79'
    sha256 'd5b7ba9d8dd48581875dacdcfc9e521b518e19256fe6e5d51366f14fb6f3db79'
    url "https://nektony.com/promo/funter/update/update_#{version}.zip"
    appcast 'https://nektony.com/promo/funter/update/update.xml'
  end

  name 'Funter'
  homepage 'https://nektony.com/products/funter'

  app 'Funter.app'
end
