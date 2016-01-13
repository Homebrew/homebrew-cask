cask 'freezer' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/Freezer.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Freezer',
          :checkpoint => 'bf2c35ae8fc05a99936a511abf58b75876fac648b025e1005c2135e446a4af3d'
  name 'Freezer'
  homepage 'https://mrgeckosmedia.com/applications/info/Freezer'
  license :gratis

  app 'Freezer/Freezer.app'
end
