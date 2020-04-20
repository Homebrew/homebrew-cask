cask 'macx-dvd-ripper-pro' do
  version '6.5.2,20200420'
  sha256 '251255fe5432e5f4576d0a17a1b7f8bec6cec6ff8dbaf7d518f3f9dcf2fe32a4'

  url 'https://www.macxdvd.com/download/macx-dvd-ripper-pro.dmg'
  appcast 'https://www.macxdvd.com/mac-dvd-ripper-pro/upgrade/macx-dvd-ripper-pro'
  name 'MacX DVD Ripper Pro'
  homepage 'https://www.macxdvd.com/mac-dvd-ripper-pro/'

  app 'MacX DVD Ripper Pro.app'
end
