class SplashtopPersonal < Cask
  url 'http://d17kmd0va0f0mp.cloudfront.net/macclient/STP/Splashtop_Personal_v2.4.3.1.dmg'
  homepage 'http://www.splashtop.com/personal'
  version '2.4.3.1'
  sha256 'a0167ad134b3134e9b3e5e0a26238aed04ef230f3cabcddd7fd0fef9d82687aa'
  install 'Splashtop Personal.pkg'
  uninstall :pkgutil => 'com.splashtop.stp.*'
end
