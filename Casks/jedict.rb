cask 'jedict' do
  version '5.0.3'
  sha256 '161d0c812010b4a9bfaa4abc6a2376dfe4b5260714efc2c0f77d3785eb9a2caf'

  url "http://jedict.com/Downloads/JEDict#{version.no_dots}.dmg"
  name 'Jedict'
  homepage 'http://www.jedict.com/'

  app 'JEDict.app'
end
