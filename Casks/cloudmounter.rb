cask 'cloudmounter' do
  version :latest
  sha256 :no_check

  url 'https://mac.eltima.com/download/cloudmounter.dmg'
  appcast 'https://cdn.eltima.com/download/cloudmounter-update/settings.xml'
  name 'Eltima CloudMounter'
  homepage 'https://mac.eltima.com/mount-cloud-drive.html'

  app 'CloudMounter.app'
end
