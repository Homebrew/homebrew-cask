cask :v1 => 'calibre' do
  version :latest
  sha256 :no_check

  url 'http://status.calibre-ebook.com/dist/osx32'
  homepage 'http://calibre-ebook.com/'
  license :gpl

  app 'calibre.app'
end
