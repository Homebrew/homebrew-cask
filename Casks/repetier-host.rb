class RepetierHost < Cask
  version '0.56'
  sha256 '0d4b43ec7bec5ac85133d00e1a2cf61956ef90abc255c253029e0ef26160adfa'
  
  url 'http://www.repetier.com/?wpdmact=process&did=MzYuaG90bGluaw=='
  appcast 'http://www.repetier.com/updates/rhm/rhm-appcast.xml'
  homepage 'http://www.repetier.com/'

  link 'Repetier-Host Mac.app'
end
