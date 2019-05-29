cask 'supersync' do
  version '6.2'
  sha256 '007efaad1d8de0703859a3677197f504cfd9faa2183ca01602c7dbb26e02766d'

  url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  appcast 'https://supersync.com/downloads.php'
  name 'SuperSync'
  homepage 'https://supersync.com/'

  app 'SuperSync.app'
end
