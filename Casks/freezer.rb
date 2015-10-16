cask :v1 => 'freezer' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/Freezer.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Freezer'
  name 'Freezer'
  homepage 'https://mrgeckosmedia.com/applications/info/Freezer'
  license :gratis

  app 'Freezer/Freezer.app'
end
