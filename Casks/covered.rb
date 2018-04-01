cask 'covered' do
  version '2.0'
  sha256 '7120675e783ecf43d35e75808bc60b3726ac9bb33541a2be155594fd1b315646'

  url "http://robheague.com/s/Covered-#{version.no_dots}.zip"
  name 'Covered'
  homepage 'https://robheague.com/covered'

  app 'Covered.app'
end
