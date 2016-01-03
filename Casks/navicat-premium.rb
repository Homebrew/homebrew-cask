cask 'navicat-premium' do
  version '11.2.5'
  sha256 '3789d07443c90d162ed12a91a7c90bc53c3b87487e95eafead7df6fdef7f6dc9'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*}, '\1\2')}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial

  app 'Navicat Premium.app'
end
