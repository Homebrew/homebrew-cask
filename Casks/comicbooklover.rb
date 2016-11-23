cask 'comicbooklover' do
  version '1.7,1529'
  sha256 'fe77d4a579e5401d1749fe78f51e03b8630daa62cb6acea842e1ea7eec552804'

  url "https://www.bitcartel.com/downloads/comicbooklover_#{version.after_comma}.zip"
  appcast "https://www.bitcartel.com/appcast/comicbooklover-#{version.before_comma}-dsa.xml",
          checkpoint: 'd49f0a94e0d4e5c9708f8880c33d20e8f9fa55bf9abef085b6c36e58a705942a'
  name 'ComicBookLover'
  homepage 'https://www.bitcartel.com/comicbooklover/'

  app 'ComicBookLover.app'
end
