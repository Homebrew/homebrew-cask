cask :v1 => 'comicbookloversync' do
  version :latest
  sha256 :no_check

  url 'https://www.bitcartel.com/downloads/comicbookloversync.zip'
  name 'ComicBookLover Sync'
  homepage 'https://www.bitcartel.com/comicbooklover/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ComicBookLoverSync.app'
end
