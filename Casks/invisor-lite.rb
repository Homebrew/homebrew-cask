cask 'invisor-lite' do
  version '3.8.1'
  sha256 '49b8d3dee4bb0e0018d211fc2245475e193b99bfa2a41fbf07adb1c5c1dc8574'

  url "http://www.pozdeev.com/invisor/download/InvisorLite-#{version}.dmg"
  appcast 'http://www.pozdeev.com/invisor/appcast_lite.xml',
          checkpoint: '716c0cab315874094b6247c06347d02870260652790614719225cdec3cccc31b'
  name 'Invisor Lite'
  homepage 'https://www.pozdeev.com/invisor/'

  app 'Invisor Lite.app'
end
