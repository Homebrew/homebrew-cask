class Screenhero < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://dl.screenhero.com/update/screenhero/Screenhero.dmg'
  appcast 'http://dl.screenhero.com/update/screenhero/sparkle.xml'
  homepage 'http://screenhero.com'

  link 'Screenhero.app'
end
