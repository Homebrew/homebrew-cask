cask 'chromatic' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/Chromatic.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Chromatic',
          :checkpoint => '375b5711b9e11f71af5e3f81f2fbb166541874f304a94b2f57db447e45e1837b'
  name 'Chromatic'
  homepage 'https://mrgeckosmedia.com/applications/info/Chromatic'
  license :isc

  app 'Chromatic.app'
end
