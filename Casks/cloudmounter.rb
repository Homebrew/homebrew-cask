cask 'cloudmounter' do
  version '3.2'
  sha256 'f3dcfb05c47133d0ebc9ae553b7309e147e4e50568f83f703bdf13444d33e09a'

  url 'https://mac.eltima.com/download/cloudmounter.dmg'
  appcast 'https://cdn.eltima.com/download/cloudmounter-update/settings.xml'
  name 'Eltima CloudMounter'
  homepage 'https://mac.eltima.com/mount-cloud-drive.html'

  app 'CloudMounter.app'
end
