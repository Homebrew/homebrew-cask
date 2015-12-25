cask 'navicat-premium' do
  version '11.2.5'
  sha256 '7486be655990b0fbf35901b2acf1871280f72164d39c19626576a126b6d5e024'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial

  app 'Navicat Premium.app'
end
