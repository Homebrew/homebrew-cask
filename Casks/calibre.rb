cask :v1 => 'calibre' do
  version '2.22.0'
  sha256 '5c692f4caaa0671c88bc51a867ae546895dde45a6988471e31e2d1471606e628'

  # github.com is an official download host per the vendor homepage, and a faster mirror than the main one
  url "https://github.com/kovidgoyal/calibre/releases/download/v#{version}/calibre-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/calibre/releases.atom'
  name 'calibre'
  homepage 'http://calibre-ebook.com/'
  license :gpl

  app 'calibre.app'
end
