cask :v1 => 'calibre' do
  version '2.24.0'
  sha256 '24093ea7de545b993262f870841a05fad1c1aacbcee6b825bedc624b6546019d'

  # github.com is an official download host per the vendor homepage, and a faster mirror than the main one
  url "https://github.com/kovidgoyal/calibre/releases/download/v#{version}/calibre-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/calibre/releases.atom'
  name 'calibre'
  homepage 'http://calibre-ebook.com/'
  license :gpl

  app 'calibre.app'
end
