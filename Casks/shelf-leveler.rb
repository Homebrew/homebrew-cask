cask 'shelf-leveler' do
  version '0.1'
  sha256 '47616c8fbbd1a2132f84ffa311cc34e1b198897cbdf7c24e4358012b12ee9989'

  url 'https://download.mrgeckosmedia.com/ShelfLeveler.zip'
  appcast 'https://mrgeckosmedia.com/applications/releasenotes/Shelf-Leveler',
          checkpoint: '064a0876b7a52e15425c1935b644bd4c0977e39002e9db419d7173ded0ee2d63'
  name 'Shelf Leveler'
  homepage 'https://mrgeckosmedia.com/applications/info/Shelf-Leveler'

  app 'Shelf Leveler.app'
end
