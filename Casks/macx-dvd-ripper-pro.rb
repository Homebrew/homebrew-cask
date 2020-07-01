cask 'macx-dvd-ripper-pro' do
  version '6.5.3,20200630'
  sha256 '147b66ed1946dea61bb15a08b0c4e92875f82ed9e838e4db1495acf1180019cb'

  url 'https://www.macxdvd.com/download/macx-dvd-ripper-pro.dmg'
  appcast 'https://www.macxdvd.com/mac-dvd-ripper-pro/upgrade/macx-dvd-ripper-pro'
  name 'MacX DVD Ripper Pro'
  homepage 'https://www.macxdvd.com/mac-dvd-ripper-pro/'

  app 'MacX DVD Ripper Pro.app'
end
