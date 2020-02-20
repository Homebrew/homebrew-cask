cask 'fm3-edit' do
  version '1.00.00'
  sha256 'dec293c8f7755ce970129125a9414d2f39dd7136795ce915221a06c0b70d5027'

  url "https://www.fractalaudio.com/downloads/FM3-Edit/FM3-Edit-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/fm3-edit/'
  name 'FM3 Edit'
  homepage 'https://www.fractalaudio.com/fm3-edit/'

  app 'FM3-Edit.app'

  zap trash: '~/Library/Application Support/Fractal Audio/FM3-Edit'
end
