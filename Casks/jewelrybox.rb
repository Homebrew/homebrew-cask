cask :v1 => 'jewelrybox' do
  version '1.5'
  sha256 '96c0bae3cc0ce312ce3df290a4d1eddff2da781dfaafe4707b298dc17eb53993'

  url "https://github.com/remear/jewelrybox/releases/download/#{version}/JewelryBox_v#{version}.tar.bz2"
  homepage 'https://github.com/remear/jewelrybox'
  license :oss

  app 'JewelryBox.app'
end
