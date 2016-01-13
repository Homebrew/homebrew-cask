cask 'freezer' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/Freezer.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Freezer',
          :checkpoint => 'ceec8f6bfaac2e5a5e688e464398032cfbcc4f392fbad88ba4bcecdda51844a8'
  name 'Freezer'
  homepage 'https://mrgeckosmedia.com/applications/info/Freezer'
  license :gratis

  app 'Freezer/Freezer.app'
end
