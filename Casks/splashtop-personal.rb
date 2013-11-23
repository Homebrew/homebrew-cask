class SplashtopPersonal < Cask
  url 'http://d17kmd0va0f0mp.cloudfront.net/macclient/STP/Splashtop_Personal_v2.4.3.1.dmg'
  homepage 'http://www.splashtop.com/personal'
  version '2.4.3.1'
  sha1 'af2bf03011ab6b8f38d4a541708d3cc364ab4d91'
  install 'Splashtop Personal.pkg'
  uninstall :pkgutil => 'com.splashtop.stp.*'
end
