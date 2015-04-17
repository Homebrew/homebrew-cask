cask :v1 => 'calibre' do
  version '2.25.0'
  sha256 '4c9d04d3449ae9a24bf89cf6d349091f129cc9270d799fc39b5769f9e6149a03'

  # github.com is an official download host per the vendor homepage, and a faster mirror than the main one
  url "https://github.com/kovidgoyal/calibre/releases/download/v#{version}/calibre-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/calibre/releases.atom'
  name 'calibre'
  homepage 'http://calibre-ebook.com/'
  license :gpl

  app 'calibre.app'
end
