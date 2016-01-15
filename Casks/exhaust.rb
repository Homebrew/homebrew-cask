cask 'exhaust' do
  version '0.3'
  sha256 '0276c4633c0ab31a16e9f5bd8b55cef4e3d5d880e98b1c29bbe53a37877adc77'

  url 'https://download.mrgeckosmedia.com/Exhaust.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Exhaust',
          :checkpoint => '98ac3c3b73b5e6eb2f19c28621dc6ca2aab76402c5082b36665edc9308a4efb1'
  name 'Exhaust'
  homepage 'https://mrgeckosmedia.com/applications/info/Exhaust'
  license :oss

  app 'Exhaust/Exhaust.app'
end
