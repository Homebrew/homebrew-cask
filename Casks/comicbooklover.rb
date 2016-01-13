cask 'comicbooklover' do
  version '1.7_1529'
  sha256 'fe77d4a579e5401d1749fe78f51e03b8630daa62cb6acea842e1ea7eec552804'

  url "https://www.bitcartel.com/downloads/comicbooklover_#{version.sub(%r{.*_}, '')}.zip"
  appcast 'https://www.bitcartel.com/appcast/comicbooklover-1.7-dsa.xml',
          :sha256 => '7e76c3f92be7769a3b7d0a111fab887f31c096c65b9f99d8a193f3492ca4d5fe'
  name 'ComicBookLover'
  homepage 'https://www.bitcartel.com/comicbooklover/'
  license :commercial

  app 'ComicBookLover.app'
end
