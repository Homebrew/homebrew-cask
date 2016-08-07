cask 'fonttong' do
  version '2.0'
  sha256 '70974dcdc39bb6f49a3440a265c3f6f87df0d5cf2b843e22fbd3120b9ce428a1'

  url 'http://www.asiafont.com/FontTong.dmg'
  name '폰트통'
  homepage 'http://www.asiafont.com'
  license :gratis

  app "폰트통v#{version}.app"
end
