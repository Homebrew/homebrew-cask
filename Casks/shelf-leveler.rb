cask 'shelf-leveler' do
  version '0.1'
  sha256 '47616c8fbbd1a2132f84ffa311cc34e1b198897cbdf7c24e4358012b12ee9989'

  url 'https://download.mrgeckosmedia.com/ShelfLeveler.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Shelf-Leveler',
          checkpoint: '89acfa3ea13123d8624ef733dfa5e37d9e9e72aaa63d43f4866346b96cef4965'
  name 'Shelf Leveler'
  homepage 'https://mrgeckosmedia.com/applications/info/Shelf-Leveler'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Shelf Leveler.app'
end
