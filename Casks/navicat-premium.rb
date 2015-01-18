cask :v1 => 'navicat-premium' do
  version '11.1.7'
  sha256 'c15bf23197136ae3b1c9925dd1cc8beda7c77e7d9d44b6951fc116f38a11b420'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Premium.app'
end
