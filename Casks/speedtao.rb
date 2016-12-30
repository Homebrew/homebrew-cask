cask 'speedtao' do
  version '0.9.98'
  sha256 '9ac32e6a26aa97aa62bc5322506b8873399a427ce78f44d896b574571e7b839a'

  url 'http://www.speedtao.net/beta_latest'
  appcast 'http://speedtao.net/su/su.xml',
          checkpoint: '83ab425aaa00d0b31ca2905a96aacfad59782f5ad5afe773d19346748503d0f5'
  name 'SpeedTao'
  homepage 'http://www.speedtao.net/'

  app 'SpeedTao.app'
end
