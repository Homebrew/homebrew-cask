cask :v1 => 'calibre' do
  if MacOS.release < :mountain_lion
    version '1.48.0'
    sha256 '0533283965fbc9a6618d0b27c85bdf3671fe75ff0e89eeff406fe1457ee61b14'
    url "http://download.calibre-ebook.com/#{version}/calibre-#{version}.dmg"
  else
    version '2.32.1'
    sha256 '073944e4da985bbb9404b1013181d56e1c25191cde4579ab58171d66e61d4f51'

    # github.com is an official download host per the vendor homepage, and a faster mirror than the main one
    url "https://github.com/kovidgoyal/calibre/releases/download/v#{version}/calibre-#{version}.dmg"
    appcast 'https://github.com/kovidgoyal/calibre/releases.atom'
  end

  name 'calibre'
  homepage 'http://calibre-ebook.com/'
  license :gpl

  app 'calibre.app'
  binary 'calibre.app/Contents/MacOS/calibre'
  binary 'calibre.app/Contents/MacOS/calibre-complete'
  binary 'calibre.app/Contents/MacOS/calibre-customize'
  binary 'calibre.app/Contents/MacOS/calibre-debug'
  binary 'calibre.app/Contents/MacOS/calibre-parallel'
  binary 'calibre.app/Contents/MacOS/calibre-server'
  binary 'calibre.app/Contents/MacOS/calibre-smtp'
  binary 'calibre.app/Contents/MacOS/calibredb'
  binary 'calibre.app/Contents/MacOS/ebook-convert'
  binary 'calibre.app/Contents/MacOS/ebook-device'
  binary 'calibre.app/Contents/MacOS/ebook-edit'
  binary 'calibre.app/Contents/MacOS/ebook-meta'
  binary 'calibre.app/Contents/MacOS/ebook-polish'
  binary 'calibre.app/Contents/MacOS/ebook-viewer'
  binary 'calibre.app/Contents/MacOS/fetch-ebook-metadata'
  binary 'calibre.app/Contents/MacOS/lrf2lrs'
  binary 'calibre.app/Contents/MacOS/lrfviewer'
  binary 'calibre.app/Contents/MacOS/lrs2lrf'
  binary 'calibre.app/Contents/MacOS/markdown-calibre'
  binary 'calibre.app/Contents/MacOS/web2disk'
end
