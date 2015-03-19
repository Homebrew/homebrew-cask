cask :v1 => 'calibre' do
  version '2.21.0'
  sha256 'be3ebde825d291ef0e212939061ea2e9a095419b9ec45ab9fa766f7bad07094d'

  # github.com is an official download host per the vendor homepage, and a faster mirror than the main one
  url "https://github.com/kovidgoyal/calibre/releases/download/v#{version}/calibre-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/calibre/releases.atom'
  name 'calibre'
  homepage 'http://calibre-ebook.com/'
  license :gpl

  app 'calibre.app'
end
