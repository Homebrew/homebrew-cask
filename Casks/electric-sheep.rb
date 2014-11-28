cask :v1 => 'electric-sheep' do
  version '2.7b35b'
  sha256 '767062403cc93aa75192def84b509b4530caca3e271ba23267ffe79cb50da44f'

  url "https://electricsheep.googlecode.com/files/electricsheep-#{version}.dmg"
  homepage 'http://www.electricsheep.org'
  license :oss

  pkg 'Electric Sheep.mpkg'

  uninstall :pkgutil => 'org.electricsheep.electricSheep.*'
end
