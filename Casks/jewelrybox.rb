cask 'jewelrybox' do
  version '1.5'
  sha256 '96c0bae3cc0ce312ce3df290a4d1eddff2da781dfaafe4707b298dc17eb53993'

  url "https://github.com/remear/jewelrybox/releases/download/#{version}/JewelryBox_v#{version}.tar.bz2"
  appcast 'https://github.com/remear/jewelrybox/releases.atom',
          checkpoint: 'ce5613f9a7818c00cbfe430939ac1246848fb8c38b44c603010cdad74d90e945'
  name 'JewelryBox'
  homepage 'https://github.com/remear/jewelrybox'
  license :oss

  app 'JewelryBox.app'
end
