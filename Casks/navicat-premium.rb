cask :v1 => 'navicat-premium' do
  version '11.1.13'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'a69c3971fcd7f85afb3c8b139471970220ecdc2bcaf413340ab31e9d8286c2ba'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Premium.app'
end
