cask 'klokki' do
  version '1.1.2'
  sha256 '8667dd3acac54f35f6f2c1bc489e768a7e007b3a354d9ce49904fc7ef0ce24e6'

  # storage.yandexcloud.net/klokki was verified as official when first introduced to the cask
  url 'https://storage.yandexcloud.net/klokki/Klokki.dmg'
  appcast 'https://storage.yandexcloud.net/klokki/appcast.xml'
  name 'Klokki'
  homepage 'https://klokki.com/'

  depends_on macos: '>= :high_sierra'

  app 'Klokki.app'
end
