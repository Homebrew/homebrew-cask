cask 'macx-dvd-ripper-pro' do
  version '6.5.2,20200420'
  sha256 '85ef11514d02e94e0a84312a5952617241e2a772c361f50f84204ac55c0af0b4'

  url 'https://www.macxdvd.com/download/macx-dvd-ripper-pro.dmg'
  appcast 'https://www.macxdvd.com/mac-dvd-ripper-pro/upgrade/macx-dvd-ripper-pro'
  name 'MacX DVD Ripper Pro'
  homepage 'https://www.macxdvd.com/mac-dvd-ripper-pro/'

  app 'MacX DVD Ripper Pro.app'
end
