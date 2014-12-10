cask :v1 => 'comicbookloversync' do
  version :latest
  sha256 :no_check

  url 'https://www.bitcartel.com/downloads/comicbookloversync.zip'
  homepage 'http://www.bitcartel.com/comicbooklover'
  license :unknown    # todo: improve this machine-generated value

  app 'ComicBookLoverSync.app'
end
