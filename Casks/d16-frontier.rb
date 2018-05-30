cask 'd16-frontier' do
  version '1.0.0'
  sha256 '7ed4762003b3a40b3306523404a1665a41bd7ba0016e6ed66073967cbfabdfd4'

  url "http://d16.pl/pub/install/Frontier%20-%20#{version}.dmg"
  name 'D16 Frontier'
  homepage 'http://d16.pl/frontier'

  pkg "Frontier-#{version}.pkg"

  uninstall pkgutil: 'com.d16group.pkg.frontier'
end
