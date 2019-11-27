cask 'robofont' do
  version '3.3'
  sha256 '2ee6460201abe754710188c0a18ff725af1599c49d38ffa6ca5828f33bd04683'

  # static.typemytype.com/robofont was verified as official when first introduced to the cask
  url 'https://static.typemytype.com/robofont/RoboFont.dmg'
  appcast 'https://doc.robofont.com/appcast.xml'
  name 'RoboFont'
  homepage 'https://robofont.com/'

  app 'RoboFont.app'
end
