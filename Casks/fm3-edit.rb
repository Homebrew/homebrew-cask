cask 'fm3-edit' do
  version '1.01.07'
  sha256 '5b27d481e13eb00d578db2e9ca1371382daadd92a0b67cb33a71bb7044f7e391'

  url "https://www.fractalaudio.com/downloads/FM3-Edit/FM3-Edit-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/fm3-edit/'
  name 'FM3 Edit'
  homepage 'https://www.fractalaudio.com/fm3-edit/'

  app 'FM3-Edit.app'

  zap trash: '~/Library/Application Support/Fractal Audio/FM3-Edit'
end
