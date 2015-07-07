cask :v1 => 'shelf-leveler' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/ShelfLeveler.zip'
  name 'Shelf Leveler'
  homepage 'https://mrgeckosmedia.com/applications/info/Shelf-Leveler'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Shelf Leveler.app'
end
