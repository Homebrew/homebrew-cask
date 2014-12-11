cask :v1 => 'shelf-leveler' do
  version :latest
  sha256 :no_check

  url 'http://download.mrgeckosmedia.com/ShelfLeveler.zip'
  homepage 'https://mrgeckosmedia.com/applications/info/Shelf-Leveler'
  license :unknown    # todo: improve this machine-generated value

  app 'Shelf Leveler.app'
end
