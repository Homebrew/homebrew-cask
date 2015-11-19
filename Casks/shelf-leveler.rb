cask :v1 => 'shelf-leveler' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/ShelfLeveler.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Shelf-Leveler',
          :sha256 => 'c105352e410ec86e4c28d524210532901be9efc0e59daf8231f0ade4eea1c39e'
  name 'Shelf Leveler'
  homepage 'https://mrgeckosmedia.com/applications/info/Shelf-Leveler'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Shelf Leveler.app'
end
