cask 'mp3gain-express' do
  version '1.2'
  sha256 '4bf1f7f900e11830ccb0acf248d1873d14db8b6b0e87386770adf85b6b6eda35'

  url "http://projects.sappharad.com/mp3gain/mp3gain_mac#{version.no_dots}.zip"
  appcast 'http://projects.sappharad.com/mp3gain/updates.xml',
          checkpoint: '6065d4e0b882f7b4d703bad0f6d64ad15f8afc11125f0d033857db773d9a3a7d'
  name 'MP3Gain Express'
  homepage 'http://projects.sappharad.com/mp3gain/'

  app 'MP3Gain Express.app'
end
