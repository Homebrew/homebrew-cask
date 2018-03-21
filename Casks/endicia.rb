cask 'endicia' do
  version '2181v747'
  sha256 '04cc596b2ddc217eba402be79580f4f62bced466d0c481e3eecccae24a2a3f38'

  url "https://download.endiciaformac.com/EndiciaForMac#{version.no_dots}.dmg"
  appcast 'https://s3.amazonaws.com/endiciaformac/EndiciaForMacSparkle.xml',
          checkpoint: '7c1ef8af297627665d30038a42a4f133e714131d12434c47d0e89af39d3b74b0'
  name 'Endicia for Mac'
  homepage 'https://endiciaformac.com/'

  app 'Endicia.app'
end
