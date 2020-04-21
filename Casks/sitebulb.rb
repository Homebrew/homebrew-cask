cask 'sitebulb' do
  version '3.5.2'
  sha256 '40837fa3ebf3e5e4bce4d8690554f2c225df1a8cdf33f23869dc559a9d556c90'

  url "https://downloads.sitebulb.com/#{version}/macOS/Sitebulb.dmg"
  appcast 'https://sitebulb.com/download/'
  name 'Sitebulb'
  homepage 'https://sitebulb.com/'

  app 'Sitebulb.app'
end
