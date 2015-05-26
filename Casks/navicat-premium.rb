cask :v1 => 'navicat-premium' do
  version '11.1.12'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'f0d5f93972bd39e9a174d70f897c14afeda17db7390b15de2c417e48084b2ccf'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Premium.app'
end
