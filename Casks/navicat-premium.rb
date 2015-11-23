cask :v1 => 'navicat-premium' do
  version '11.1.17'
  sha256 '33c4db7b9628e99c29f097b399ec177dd22a3563196f26e59b5ff257b5c25cf0'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Premium.app'
end
