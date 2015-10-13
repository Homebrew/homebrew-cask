cask :v1 => 'stamp' do
  version '338'
  sha256 'ac2f6b434c81a03b4fed5e8dead6353896af98507e95386d5bbbd969e2142597'

  url "https://stampapp.io/media/STAMP#{version}.dmg"
  name 'stamp'
  homepage 'https://stampapp.io'
  license :gratis

  app 'STAMP.app'
end
