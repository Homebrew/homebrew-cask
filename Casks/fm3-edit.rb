cask 'fm3-edit' do
  version '1.01.05'
  sha256 '17398d482cd963f9806141fd9b44e942a2129e7745afdf04e639185057b58702'

  url "https://www.fractalaudio.com/downloads/FM3-Edit/FM3-Edit-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/fm3-edit/'
  name 'FM3 Edit'
  homepage 'https://www.fractalaudio.com/fm3-edit/'

  app 'FM3-Edit.app'

  zap trash: '~/Library/Application Support/Fractal Audio/FM3-Edit'
end
