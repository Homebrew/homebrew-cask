cask 'snapndrag' do
  version '4.2.7'
  sha256 'e53d5a3f596fea2c46eca52cee7f54e40ccb2cbb417ed26cc1e159fde08dac7f'

  url "http://yellowmug.com/download/SnapNDrag_#{version}.dmg"
  appcast 'http://yellowmug.com/snapndrag/appcast-1012.xml',
          checkpoint: 'd5b63cfb058ed514c2579b6376a6cb3aa04c1ba05a48292c66e8556d4e19a53f'
  name 'SnapNDrag'
  homepage 'http://www.yellowmug.com/snapndrag/'

  app 'SnapNDrag.app'
end
