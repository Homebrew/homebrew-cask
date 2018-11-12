cask 'easycrop' do
  version :latest
  sha256 :no_check

  url 'http://www.yellowmug.com/download/EasyCrop.dmg'
  appcast 'http://yellowmug.com/easycrop/appcast-1014.xml'
  name 'EasyCrop'
  homepage 'http://www.yellowmug.com/easycrop/'

  app 'EasyCrop.app'
end
