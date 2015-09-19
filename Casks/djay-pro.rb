cask :v1 => 'djay-pro' do
  version '1.2-201508141249'
  sha256 '1abf8861828d6233cf0254b0fe8621f2fb8ce1780201b2d1af1cdb1c3c8463af'

  url "http://download.algoriddim.com/djay/#{version.sub(%r{.*?-},'')}/djay_Pro_#{version.sub(%r{-\d+$},'')}.zip"
  name 'djay Pro'
  appcast 'https://www.algoriddim.com/djay-mac/releasenotes/appcast',
          :sha256 => 'b4289029993baacd8d95e458b65227fdb1c449713efe1696c064e6e2032717e3',
          :format => :sparkle
  homepage 'http://algoriddim.com/djay-mac'
  license :commercial
  tags :vendor => 'algoriddim'

  app 'djay Pro.app'
end
