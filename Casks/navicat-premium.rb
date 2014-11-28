cask :v1 => 'navicat-premium' do
  version '11.1.6'
  sha256 'd3a67be473f8317706c65e79e3d364eac37dd99559c3e97f148bd21534831a06'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial

  app 'Navicat Premium.app'
end
