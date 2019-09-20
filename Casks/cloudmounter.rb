cask 'cloudmounter' do
  version '3.5.584'
  sha256 'bfbfad2623d36dd32c863ca52c299a39e3ee33b3ea4915d12d7ae97ec5a2e006'

  url 'https://cdn.eltima.com/download/cloudmounter.dmg'
  appcast 'https://cdn.eltima.com/download/cloudmounter-update/settings.xml'
  name 'Eltima CloudMounter'
  homepage 'https://mac.eltima.com/mount-cloud-drive.html'

  app 'CloudMounter.app'
end
