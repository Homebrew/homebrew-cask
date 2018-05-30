cask 'd16-sigmund' do
  version '1.1.2'
  sha256 '6f87a82c4f3e57c1121c697a7d95b1bc3c3311b7612929e520ab6a725fed45b7'

  url "http://d16.pl/pub/install/Sigmund%20-%20#{version}.dmg"
  name 'D16 Sigmund'
  homepage 'http://d16.pl/sigmund'

  pkg "Sigmund-#{version}.pkg"

  uninstall pkgutil: 'com.d16group.pkg.sigmund'
end
