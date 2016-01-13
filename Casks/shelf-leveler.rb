cask 'shelf-leveler' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/ShelfLeveler.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Shelf-Leveler',
          :sha256 => '6ea7303b494ecba77928c26a80ada73f3e810c5dcb71a65029708c4a16f5c4e4'
  name 'Shelf Leveler'
  homepage 'https://mrgeckosmedia.com/applications/info/Shelf-Leveler'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Shelf Leveler.app'
end
