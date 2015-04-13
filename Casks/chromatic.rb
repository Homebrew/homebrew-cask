cask :v1 => 'chromatic' do
  version :latest
  sha256 :no_check

  url 'http://download.mrgeckosmedia.com/Chromatic.zip'
  appcast 'http://mrgeckosmedia.com/applications/appcast/Chromatic'
  name 'Chromatic'
  homepage 'https://mrgeckosmedia.com/applications/info/Chromatic'
  license :isc

  app 'Chromatic.app'
end
