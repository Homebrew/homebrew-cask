cask :v1 => 'mp3gain-express' do
  version '1.2'
  sha256 '4bf1f7f900e11830ccb0acf248d1873d14db8b6b0e87386770adf85b6b6eda35'

  url "http://projects.sappharad.com/mp3gain/mp3gain_mac#{version.sub('.','')}.zip"
  name 'MP3Gain Express'
  appcast 'http://projects.sappharad.com/mp3gain/updates.xml',
          :sha256 => '6a52d90a7579ad97a666c68c1344d2d5d57634e6d3cdc794be5e71c11aef0fe0'
  homepage 'http://projects.sappharad.com/mp3gain/'
  license :oss

  app 'MP3Gain Express.app'
end
