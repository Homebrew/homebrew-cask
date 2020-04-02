cask 'fm3-edit' do
  version '1.01.01'
  sha256 '79b2d90a424cd175a73a8c3fdc8c196d6543ab8fecf0af074755889ac76560e9'

  url "https://www.fractalaudio.com/downloads/FM3-Edit/FM3-Edit-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/fm3-edit/'
  name 'FM3 Edit'
  homepage 'https://www.fractalaudio.com/fm3-edit/'

  app 'FM3-Edit.app'

  zap trash: '~/Library/Application Support/Fractal Audio/FM3-Edit'
end
