cask 'macx-dvd-ripper-pro' do
  version '6.2.2,20190521'
  sha256 '05d2e94458609ef12097c3f5962da52c0cb52e4e267b4f3bccae3f80f9ef63b5'

  url 'https://www.macxdvd.com/download/macx-dvd-ripper-pro.dmg'
  appcast 'http://www.macxdvd.com/mac-dvd-ripper-pro/upgrade/macx-dvd-ripper-pro'
  name 'MacX DVD Ripper Pro'
  homepage 'https://www.macxdvd.com/mac-dvd-ripper-pro/'

  app 'MacX DVD Ripper Pro.app'
end
