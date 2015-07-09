cask :v1 => 'electric-sheep' do
  version '2.7b35b'
  sha256 '767062403cc93aa75192def84b509b4530caca3e271ba23267ffe79cb50da44f'

  # googlecode.com is the official download host per the vendor homepage
  url "https://electricsheep.googlecode.com/files/electricsheep-#{version}.dmg"
  name 'Electric Sheep'
  homepage 'http://www.electricsheep.org'
  license :gpl

  pkg 'Electric Sheep.mpkg'

  uninstall :pkgutil => 'org.electricsheep.electricSheep.*'
end
