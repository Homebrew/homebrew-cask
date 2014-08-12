class Comicbooklover < Cask
  version 'latest'
  sha256 :no_check

  url 'https://www.bitcartel.com/downloads/comicbooklover.zip'
  appcast 'http://www.bitcartel.com/appcast/comicbooklover-1.7-dsa.xml'
  homepage 'http://www.bitcartel.com/comicbooklover/'

  link 'ComicBookLover.app'
end
