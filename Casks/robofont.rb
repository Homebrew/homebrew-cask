cask 'robofont' do
  version '3.2'
  sha256 '75cd586f08d6b17eb74f5a309f0df26ad745ba7ccb6355e1b1e94d7a0d067cfd'

  # static.typemytype.com/robofont was verified as official when first introduced to the cask
  url 'https://static.typemytype.com/robofont/RoboFont.dmg'
  appcast 'https://doc.robofont.com/appcast.xml'
  name 'RoboFont'
  homepage 'https://robofont.com/'

  app 'RoboFont.app'
end
