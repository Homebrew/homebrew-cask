class Plug < Cask
  url 'http://www.plugformac.com/files/Plug-latest.dmg'
  appcast 'http://www.plugformac.com/files/sparklecast.xml'
  homepage 'http://www.plugformac.com/'
  version 'latest'
  sha256 :no_check
  link 'Plug.app'
end
