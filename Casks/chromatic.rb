cask 'chromatic' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/Chromatic.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Chromatic',
          :sha256 => '330e572519b938538a747d04a19b8068787bc843e858e64df11102a34c6aa324'
  name 'Chromatic'
  homepage 'https://mrgeckosmedia.com/applications/info/Chromatic'
  license :isc

  app 'Chromatic.app'
end
