cask :v1 => 'navicat-premium' do
  version '11.1.7'
  sha256 'c5e94e3609d802c1fa5ef1807b42a28b131fa34789a712399a0bb50f78e79822'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Premium.app'
end
