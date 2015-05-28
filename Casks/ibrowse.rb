cask :v1 => 'ibrowse' do
  version '1.0.3.0'
  sha256 '15dfc22ca7a97b9593994115c5adc016357a443131582e4d68a9bcb32e08ab7c'

  # macroplant.com is the official download host per the vendor homepage
  url "http://cdn.macroplant.com/release/iBrowse-#{version}.dmg"
  name 'iBrowse'
  appcast 'https://www.macroplant.com/ibrowse/ib-appcast.xml',
          :sha256 => '2dd21aed73c84b3b7c85ca29292f1c347fbadd5f9fd78866bd5db55d2c70e88f'
  homepage 'http://www.ibrowseapp.com/'
  license :gratis

  app 'iBrowse.app'
end
