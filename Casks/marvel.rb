cask 'marvel' do
  version '5.3'
  sha256 '858e847471d7ff360ed90c4998ffe66a4b2517934f5f0baa7466ce8dd8187871'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/sketch-plugin/Marvel.zip'
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml',
          checkpoint: 'bb39df873e2d6cc5381af5b3c32a974dae43a3821b2628f52585f62ca615885f'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
