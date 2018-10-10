cask 'cloudmounter' do
  version :latest
  sha256 :no_check

  url 'https://mac.eltima.com/download/cloudmounter.dmg'
  name 'Eltima CloudMounter'
  homepage 'https://mac.eltima.com/mount-cloud-drive.html'

  app 'CloudMounter.app'
end
