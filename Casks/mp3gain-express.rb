cask 'mp3gain-express' do
  version '1.2'
  sha256 '4bf1f7f900e11830ccb0acf248d1873d14db8b6b0e87386770adf85b6b6eda35'

  url "http://projects.sappharad.com/mp3gain/mp3gain_mac#{version.delete('.')}.zip"
  appcast 'http://projects.sappharad.com/mp3gain/updates.xml',
          checkpoint: '15244c931d367a3cd64768c7a89a7ad73f53f7ae3a10fa238ea84060d52d908f'
  name 'MP3Gain Express'
  homepage 'http://projects.sappharad.com/mp3gain/'
  license :oss

  app 'MP3Gain Express.app'
end
