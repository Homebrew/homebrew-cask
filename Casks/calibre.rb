cask :v1 => 'calibre' do
  version '2.27.0'
  sha256 '564a3298715e7f5a2be66ac3a863121ba82b18b881f8f06746027ae101e00e58'

  # github.com is an official download host per the vendor homepage, and a faster mirror than the main one
  url "https://github.com/kovidgoyal/calibre/releases/download/v#{version}/calibre-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/calibre/releases.atom'
  name 'calibre'
  homepage 'http://calibre-ebook.com/'
  license :gpl

  app 'calibre.app'
end
