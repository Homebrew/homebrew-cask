class Freefilesync < Cask
  version '6.9'
  sha256 '5f14625c37381ea33c068df458835344f24f5c0ea9cb071535236740be9c855f'

  url "http://www.fosshub.com/download/FreeFileSync_#{version}_Mac_OS_X_64-bit.zip", :referer => 'http://www.fosshub.com/FreeFileSync.html'
  homepage 'http://freefilesync.sourceforge.net/'

  link 'FreeFileSync.app'
  link 'RealtimeSync.app'
end
