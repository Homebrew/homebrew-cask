cask :v1 => 'calibre' do
  version '2.26.0'
  sha256 'e6dc8f60f085a50f223f03837c1d9f48fc40d8f63e65fc12947f36faf1d812ea'

  # github.com is an official download host per the vendor homepage, and a faster mirror than the main one
  url "https://github.com/kovidgoyal/calibre/releases/download/v#{version}/calibre-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/calibre/releases.atom'
  name 'calibre'
  homepage 'http://calibre-ebook.com/'
  license :gpl

  app 'calibre.app'
end
