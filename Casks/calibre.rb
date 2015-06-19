cask :v1 => 'calibre' do
  if MacOS.release < :mountain_lion
    version '1.48.0'
    sha256 '0533283965fbc9a6618d0b27c85bdf3671fe75ff0e89eeff406fe1457ee61b14'
    url "http://download.calibre-ebook.com/#{version}/calibre-#{version}.dmg"
  else
    version '2.30.0'
    sha256 '279af9817411dddd22d08b270b321a104f31ffe1bc22149e46e1855c3a79b591'

    # github.com is an official download host per the vendor homepage, and a faster mirror than the main one
    url "https://github.com/kovidgoyal/calibre/releases/download/v#{version}/calibre-#{version}.dmg"
    appcast 'https://github.com/kovidgoyal/calibre/releases.atom'
  end

  name 'calibre'
  homepage 'http://calibre-ebook.com/'
  license :gpl

  app 'calibre.app'
end
