cask :v1 => 'navicat-premium' do
  version '11.1.15'
  sha256 'c1ba91359da1da4c1a8ebc437abf62c14b03d94e843bb04a76d30c19cb840e39'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Premium.app'
end
