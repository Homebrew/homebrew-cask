cask 'shelf-leveler' do
  version '0.1'
  sha256 '47616c8fbbd1a2132f84ffa311cc34e1b198897cbdf7c24e4358012b12ee9989'

  url 'https://download.mrgeckosmedia.com/ShelfLeveler.zip'
  appcast 'https://mrgeckosmedia.com/applications/releasenotes/Shelf-Leveler',
          checkpoint: 'd59300e7db9b222630f805a0ecbbe4290ced6cbed4f514b04cfdf319ae0091fd'
  name 'Shelf Leveler'
  homepage 'https://mrgeckosmedia.com/applications/info/Shelf-Leveler/'

  app 'Shelf Leveler.app'
end
