cask 'cloudmounter' do
  version :latest
  sha256 :no_check

  url 'http://mac.eltima.com/download/cloudmounter.dmg'
  name 'Eltima CloudMounter'
  homepage 'http://mac.eltima.com/mount-cloud-drive.html'

  app 'CloudMounter.app'
end
