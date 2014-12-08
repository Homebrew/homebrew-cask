cask :v1 => 'mp3gain-express' do
  version '1.2'
  sha256 '4bf1f7f900e11830ccb0acf248d1873d14db8b6b0e87386770adf85b6b6eda35'

  url 'http://projects.sappharad.com/mp3gain/mp3gain_mac12.zip'
  homepage 'http://projects.sappharad.com/mp3gain/'
  license :oss

  app 'MP3Gain Express.app'
end
