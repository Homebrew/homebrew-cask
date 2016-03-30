cask 'invisor-lite' do
  version '3.6.1'
  sha256 'cd4eaff45916f0a50708583097b9133f7f9dff8b76bc78caa9b78e649f3ef155'

  url "http://www.pozdeev.com/invisor/download/InvisorLite-#{version}.dmg"
  appcast 'http://www.pozdeev.com/invisor/appcast_lite.xml',
          checkpoint: 'd82498730df0759063b6d56e424b34bcfd2fb5a4bd35b3dab91d0e4260394713'
  name 'Invisor Lite'
  homepage 'http://www.pozdeev.com/invisor/'
  license :gratis

  app 'Invisor Lite.app'
end
