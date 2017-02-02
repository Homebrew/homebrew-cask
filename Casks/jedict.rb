cask 'jedict' do
  version '5.0.1'
  sha256 'e31f6b185e2aa326ba8b2981e668b751baf11b8e469d8e347f1da26488cc8000'

  url "http://jedict.com/Downloads/JEDict#{version.no_dots}.dmg"
  name 'Jedict'
  homepage 'http://www.jedict.com/'

  app 'JEDict.app'
end
