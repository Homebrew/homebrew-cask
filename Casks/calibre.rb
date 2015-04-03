cask :v1 => 'calibre' do
  version '2.23.0'
  sha256 'bada464463d67a00354294135845e96639645c1cc4720a1e22921b26f76f93bf'

  # github.com is an official download host per the vendor homepage, and a faster mirror than the main one
  url "https://github.com/kovidgoyal/calibre/releases/download/v#{version}/calibre-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/calibre/releases.atom'
  name 'calibre'
  homepage 'http://calibre-ebook.com/'
  license :gpl

  app 'calibre.app'
end
