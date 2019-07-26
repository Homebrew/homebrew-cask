cask 'easycrop' do
  version '2.6.1'
  sha256 '62acadbb140f456d3b6e184660b887eae1ee493b56035e58925d97cc19d7fce7'

  url "https://yellowmug.com/download/EasyCrop_#{version}.dmg"
  appcast 'https://yellowmug.com/easycrop/appcast-1014.xml'
  name 'EasyCrop'
  homepage 'https://yellowmug.com/easycrop/'

  app 'EasyCrop.app'
end
