cask 'comicbooklover' do
  version '1.7_1529'
  sha256 'fe77d4a579e5401d1749fe78f51e03b8630daa62cb6acea842e1ea7eec552804'

  url "https://www.bitcartel.com/downloads/comicbooklover_#{version.sub(%r{.*_}, '')}.zip"
  appcast 'https://www.bitcartel.com/appcast/comicbooklover-1.7-dsa.xml',
          :sha256 => 'ce347210ffedd0fb0626336c44e081d9990eee49e645e784c3ffe185b53f3cef'
  name 'ComicBookLover'
  homepage 'https://www.bitcartel.com/comicbooklover/'
  license :commercial

  app 'ComicBookLover.app'
end
