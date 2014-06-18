class Screenhero < Cask
  url 'http://dl.screenhero.com/update/screenhero/Screenhero.dmg'
  appcast 'http://dl.screenhero.com/update/screenhero/sparkle.xml'
  homepage 'http://screenhero.com'
  version 'latest'
  sha256 :no_check
  link 'Screenhero.app'
end
