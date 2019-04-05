cask 'easycrop' do
  version '2.6.1'
  sha256 '62acadbb140f456d3b6e184660b887eae1ee493b56035e58925d97cc19d7fce7'

  url "http://yellowmug.com/download/EasyCrop_#{version}.dmg"
  appcast 'http://yellowmug.com/easycrop/appcast-1014.xml'
  name 'EasyCrop'
  homepage 'http://www.yellowmug.com/easycrop/'

  app 'EasyCrop.app'
end
