cask :v1 => 'navicat-premium' do
  version '11.1.9'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'a30a03d88d71b620de5bab432e54f9cfe8fee344e946806d558467a4dda39791'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Premium.app'
end
