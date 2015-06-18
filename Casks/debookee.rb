cask :v1 => 'debookee' do
  version '4.2.0'
  sha256 '7f2a67d6a8d80da39a9a5d3b200c3995868b608fc9abc34b0cd690d84db090fb'

  url 'http://www.iwaxx.com/debookee/debookee.zip'
  name 'Debookee'
  homepage 'http://www.iwaxx.com/debookee/'
  license :commercial

  app "Debookee #{version}/Debookee.app"
end
