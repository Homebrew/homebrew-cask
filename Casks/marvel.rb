cask 'marvel' do
  version '7.4.1'
  sha256 '4e4d3989b45bc7cb0feed5323c23f3aaa81add117350c51010311be50cd614c1'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/sketch-plugin/Marvel.zip'
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml',
          checkpoint: '86decc76fddbe699f8cf028759c1887e14cf649f2cc9090b9bbbf1b00cf88ed0'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
