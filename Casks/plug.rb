class Plug < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.plugformac.com/files/Plug-latest.dmg'
  appcast 'http://www.plugformac.com/files/sparklecast.xml'
  homepage 'http://www.plugformac.com/'

  link 'Plug.app'
end
