cask 'ifunbox' do
  version '1.8'
  sha256 '19bef7c6079cb3d13dc109478c473e420643e3164ed02b668f76220f60884a11'

  url "http://dl.i-funbox.com/updates/ifunbox.mac/#{version}/ifunboxmac.dmg"
  appcast 'http://dl.i-funbox.com/updates/ifunbox.mac/update.xml',
          checkpoint: '9b12b34329541e5d27314bd889b936e44b236f1c75d37d1909b20285d540ebac'
  name 'iFunBox'
  homepage 'http://www.i-funbox.com/'

  app 'iFunBox.app'
end
