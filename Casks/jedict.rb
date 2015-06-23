cask :v1 => 'Jedict' do
  if MacOS.release >= :snow_leopard
    version '4.9.5'
    sha256 '0af8380f86f7d1de1dd81e8ba57ef204dc2525ce18d1a7ba322af6343e428ed2'
    url "http://jedict.com/Downloads/JEDict381.sit"
    app 'JEDict.app'
  else
    version '5.3.2'
    sha256 '6051434c77ad48af7b11f2259a91b12ded21ce3357c8db4780718ce83f44b668'
    url "http://jedict.com/Downloads/JEDict495.zip"
    app 'JEDict.app'
  end
  name 'Jedict'
  homepage 'http://www.jedict.com/'
  license :commercial
end
