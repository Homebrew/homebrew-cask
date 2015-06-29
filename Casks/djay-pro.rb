cask :v1 => 'djay-pro' do
  version :latest
  sha256 :no_check

  url 'https://www.algoriddim.com/files/djay.zip'
  name 'djay Pro'
  appcast 'https://www.algoriddim.com/djay-mac/releasenotes/appcast',
          :sha256 => '4f31a04bd5952dac697eeb74d1a5872578e2c3e108e1d70a2612926e824b6a45',
          :format => :sparkle
  homepage 'http://algoriddim.com/djay-mac'
  license :commercial
  tags :vendor => 'algoriddim'

  app 'djay Pro.app'
end
