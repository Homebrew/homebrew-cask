cask :v1 => 'comicbooklover' do
  version :latest
  sha256 :no_check

  url 'https://www.bitcartel.com/downloads/comicbooklover.zip'
  appcast 'http://www.bitcartel.com/appcast/comicbooklover-1.7-dsa.xml'
  homepage 'http://www.bitcartel.com/comicbooklover/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ComicBookLover.app'
end
