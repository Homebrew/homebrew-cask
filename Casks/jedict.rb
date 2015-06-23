cask :v1 => 'jedict' do
	version '4.9.5'
	sha256 '0af8380f86f7d1de1dd81e8ba57ef204dc2525ce18d1a7ba322af6343e428ed2'
	url "http://jedict.com/Downloads/JEDict#{version.gsub('.','')}.zip"
	app 'JEDict.app'
  name 'jedict'
  homepage 'http://www.jedict.com/'
  license :commercial
end
