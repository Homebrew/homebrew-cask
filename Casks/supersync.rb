cask 'supersync' do
  version '7.0.8'
  sha256 'dab4f7c66186313b7903cbd0c06df0815c34de57a6e350e5b04d4fd1dddecd94'

  url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  appcast 'https://supersync.com/downloads.php'
  name 'SuperSync'
  homepage 'https://supersync.com/'

  app 'SuperSync.app'
end
