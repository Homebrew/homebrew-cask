class Handbrake < Cask
  version '0.9.9'
  sha256 '050f9d0d3a126b25d24cb4971062d66f4f975317b6586f8c288795c17a0c05f9'
  
  url 'https://downloads.sourceforge.net/sourceforge/handbrake/HandBrake-0.9.9-MacOSX.6_GUI_x86_64.dmg'
  appcast 'http://handbrake.fr/appcast.x86_64.xml'
  homepage 'http://handbrake.fr/'

  link 'HandBrake.app'
end
