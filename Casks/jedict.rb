cask 'jedict' do
  version '5.0'
  sha256 'b18454ea99a410c38a20af354476572de21d5a0fe91795dfc399b605534b1ae0'

  url "http://jedict.com/Downloads/JEDict.#{version}.zip"
  name 'Jedict'
  homepage 'http://www.jedict.com/'

  app 'JEDict.app'
end
