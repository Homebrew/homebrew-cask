class Freefilesync < Cask
  version '6.6'
  sha256 'f6dbcc1516369a16928bf8fa7a583413c57402df7bf20453958581e68c7d758c'

  url 'http://www.fosshub.com/download/FreeFileSync_6.6_Mac_OS_X_64-bit.zip', :referer => 'http://www.fosshub.com/FreeFileSync.html'
  homepage 'http://freefilesync.sourceforge.net/'

  link 'FreeFileSync.app'
  link 'RealtimeSync.app'
end
