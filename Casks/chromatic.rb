cask :v1 => 'chromatic' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/Chromatic.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Chromatic'
  name 'Chromatic'
  homepage 'https://mrgeckosmedia.com/applications/info/Chromatic'
  license :isc

  app 'Chromatic.app'
end
