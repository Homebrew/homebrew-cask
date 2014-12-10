cask :v1 => 'freezer' do
  version :latest
  sha256 :no_check

  url 'http://download.mrgeckosmedia.com/Freezer.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Freezer'
  homepage 'https://mrgeckosmedia.com/applications/info/Freezer'
  license :unknown    # todo: improve this machine-generated value

  app 'Freezer/Freezer.app'
end
