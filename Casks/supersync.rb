cask 'supersync' do
  version '7.0.1'
  sha256 '1929c697d49642125956f82c54e40ed750dbe4a007593b06f7037915919707e6'

  url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  appcast 'https://supersync.com/downloads.php'
  name 'SuperSync'
  homepage 'https://supersync.com/'

  app 'SuperSync.app'
end
