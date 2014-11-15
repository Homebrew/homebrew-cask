cask :v1 => 'navicat-premium' do
  version '11.1.5'
  sha256 '31229725466814d7882059d0504fa14a467229a1beba772b91e152cc403b130e'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial

  app 'Navicat Premium.app'
end
