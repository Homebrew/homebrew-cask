class ElectricSheep < Cask
  version '2.7b35b'
  sha256 '767062403cc93aa75192def84b509b4530caca3e271ba23267ffe79cb50da44f'

  url 'https://electricsheep.googlecode.com/files/electricsheep-2.7b35b.dmg'
  homepage 'http://www.electricsheep.org'

  install 'Electric Sheep.mpkg'
  uninstall :pkgutil => 'org.electricsheep.electricSheep.*'
end
