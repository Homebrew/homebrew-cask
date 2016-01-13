cask 'exhaust' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/Exhaust.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Exhaust',
          :checkpoint => '98ac3c3b73b5e6eb2f19c28621dc6ca2aab76402c5082b36665edc9308a4efb1'
  name 'Exhaust'
  homepage 'https://mrgeckosmedia.com/applications/info/Exhaust'
  license :oss

  app 'Exhaust/Exhaust.app'
end
