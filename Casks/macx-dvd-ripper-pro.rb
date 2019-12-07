cask 'macx-dvd-ripper-pro' do
  version '6.5.0,20191023'
  sha256 '77b68a26e2a8ff6eb9c1792f12c4748a294bbec36a5d6721089358ced39f82f7'

  url 'https://www.macxdvd.com/download/macx-dvd-ripper-pro.dmg'
  appcast 'https://www.macxdvd.com/mac-dvd-ripper-pro/upgrade/macx-dvd-ripper-pro'
  name 'MacX DVD Ripper Pro'
  homepage 'https://www.macxdvd.com/mac-dvd-ripper-pro/'

  app 'MacX DVD Ripper Pro.app'
end
