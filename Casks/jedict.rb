cask 'jedict' do
  version '5.0.4'
  sha256 '37b1dc2c70048a3f5d0b1f92fa8c535af270f7471dac58987ff4a5e73a480a74'

  url "http://jedict.com/Downloads/JEDict#{version.no_dots}.dmg"
  name 'Jedict'
  homepage 'http://www.jedict.com/'

  app 'JEDict.app'
end
