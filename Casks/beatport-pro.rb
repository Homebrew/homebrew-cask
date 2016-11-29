cask 'beatport-pro' do
  version '2.4.0_171'
  sha256 '39343bd1ca97b109bd5f566f9d6b7edac34f7dc8dad946cac635224aa27fa69d'

  url "https://pro.beatport.com/mac/#{version}/beatportpro_#{version}.zip"
  appcast 'https://pro.beatport.com/mac/appcast.xml',
          checkpoint: '2170cc2428a791bab031169ea7c11dcc16310cc7cf0824310ab6a0e6f6d050bb'
  name 'Beatport Pro'
  homepage 'https://www.beatport.com/'

  app 'Beatport Pro.app'
end
