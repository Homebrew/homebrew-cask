cask :v1 => 'navicat-premium' do
  version '11.1.13'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'a20731c590c75a04795c4f5993b0dc68e204482c43e7ce025661f401da6a67e7'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Premium.app'
end
