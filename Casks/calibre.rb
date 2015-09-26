cask :v1 => 'calibre' do
  if MacOS.release < :mountain_lion
    version '1.48.0'
    sha256 '0533283965fbc9a6618d0b27c85bdf3671fe75ff0e89eeff406fe1457ee61b14'
  else
    version '2.39.0'
    sha256 '85595d5917493a4e88321eb7255d8f97705f708c653c0e27669dfe6d934692ef'
    appcast 'https://github.com/kovidgoyal/calibre/releases.atom'
  end

  url "http://download.calibre-ebook.com/#{version}/calibre-#{version}.dmg"
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
