cask 'chromatic' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/Chromatic.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Chromatic',
          :checkpoint => '094ede862354894f7fee778cd3d3c97b85af5a075f2a49bb7dc76701c7f6a23b'
  name 'Chromatic'
  homepage 'https://mrgeckosmedia.com/applications/info/Chromatic'
  license :isc

  app 'Chromatic.app'
end
