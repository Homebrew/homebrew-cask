cask 'macx-dvd-ripper-pro' do
  version '6.2.0,20190116'
  sha256 '7c9943d44362b95610159761d496ecc0936a732a2fb21604b7d783e3ec50a949'

  url 'https://www.macxdvd.com/download/macx-dvd-ripper-pro.dmg'
  appcast 'https://www.macxdvd.com/mac-dvd-ripper-pro/upgrade/macx-dvd-ripper-pro'
  name 'MacX DVD Ripper Pro'
  homepage 'https://www.macxdvd.com/mac-dvd-ripper-pro/'

  app 'MacX DVD Ripper Pro.app'
end
