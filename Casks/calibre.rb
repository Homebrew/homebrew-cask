cask :v1 => 'calibre' do
  version '2.29.0'
  sha256 '004e776c1e7c35a07a8c913cd2cadffd9a66966728ee0e2f321bc2464448db03'

  # github.com is an official download host per the vendor homepage, and a faster mirror than the main one
  url "https://github.com/kovidgoyal/calibre/releases/download/v#{version}/calibre-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/calibre/releases.atom'
  name 'calibre'
  homepage 'http://calibre-ebook.com/'
  license :gpl

  app 'calibre.app'
end
