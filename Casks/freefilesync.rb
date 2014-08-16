class Freefilesync < Cask
  version '6.8'
  sha256 'e58877de19545e069bf44a0ba2a5c62081fc7d47861cfa997847a762180b9ad0'

  url 'http://www.fosshub.com/download/FreeFileSync_6.8_Mac_OS_X_64-bit.zip', :referer => 'http://www.fosshub.com/FreeFileSync.html'
  homepage 'http://freefilesync.sourceforge.net/'

  link 'FreeFileSync.app'
  link 'RealtimeSync.app'
end
