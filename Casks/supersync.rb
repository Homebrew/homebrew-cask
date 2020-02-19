cask 'supersync' do
  version '7.0.7'
  sha256 'a93270c12a641a4e2badd150b84a8218f68d95f7026781254647b134e1cd79c9'

  url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  appcast 'https://supersync.com/downloads.php'
  name 'SuperSync'
  homepage 'https://supersync.com/'

  app 'SuperSync.app'
end
