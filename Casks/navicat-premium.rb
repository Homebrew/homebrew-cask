cask :v1 => 'navicat-premium' do
  version '11.1.16'
  sha256 '940a7c343e9b0fd97141411e871c540b8ddf48cf2afbfd7c531cbfccc17c5a72'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Premium.app'
end
