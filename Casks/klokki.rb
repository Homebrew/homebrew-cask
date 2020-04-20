cask 'klokki' do
  version '1.1.3'
  sha256 '382fedd15ad5920c29f96918ab3775957b362f659155b78ae885be7fc3a88f4c'

  # storage.yandexcloud.net/klokki/ was verified as official when first introduced to the cask
  url 'https://storage.yandexcloud.net/klokki/Klokki.dmg'
  appcast 'https://storage.yandexcloud.net/klokki/appcast.xml'
  name 'Klokki'
  homepage 'https://klokki.com/'

  depends_on macos: '>= :high_sierra'

  app 'Klokki.app'
end
