cask :v1 => 'calibre' do
  version '2.28.0'
  sha256 'd4804d7e380ebb35a8f7856f62cab29a5c309f5fe4fb406ed30c6ff33d66ce5c'

  # github.com is an official download host per the vendor homepage, and a faster mirror than the main one
  url "https://github.com/kovidgoyal/calibre/releases/download/v#{version}/calibre-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/calibre/releases.atom'
  name 'calibre'
  homepage 'http://calibre-ebook.com/'
  license :gpl

  app 'calibre.app'
end
