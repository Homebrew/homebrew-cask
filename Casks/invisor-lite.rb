cask 'invisor-lite' do
  version '3.7'
  sha256 '4b1d1f73c76d278f8bc09ff117ec880b8446273dc026b4007297d1cedbb4abc0'

  url "http://www.pozdeev.com/invisor/download/InvisorLite-#{version}.dmg"
  appcast 'http://www.pozdeev.com/invisor/appcast_lite.xml',
          checkpoint: '09e107fc3df2dcb1aeece9acc2eddcf9bb04632bb94f3d362f981abee7c22595'
  name 'Invisor Lite'
  homepage 'http://www.pozdeev.com/invisor/'

  app 'Invisor Lite.app'
end
