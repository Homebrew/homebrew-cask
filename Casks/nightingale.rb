cask :v1 => 'nightingale' do
  version '1.12-2432'
  sha256 '854b02a22f2846284618dc8d3a64a766e8e7a34e65cf35934f6b357f4bc1000e'

  url "https://downloads.sourceforge.net/ngale/Nightingale_#{version}_macosx-i686.dmg"
  homepage 'http://getnightingale.com/'
  license :oss

  app 'Nightingale.app'
end
