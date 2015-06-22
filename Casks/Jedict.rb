cask :v1 => 'Jedict' do
	version '4.9.5'
	sha256 '6051434c77ad48af7b11f2259a91b12ded21ce3357c8db4780718ce83f44b668'
	url "http://jedict.com/Downloads/JEDict#{version.gsub('.','')}.zip"
	app 'JEDict.app'
  name 'Jedict'
  homepage 'http://www.jedict.com/'
  license :commercial
end
