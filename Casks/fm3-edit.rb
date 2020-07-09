cask 'fm3-edit' do
  version '1.01.06'
  sha256 '6280457e2633820812d1344eca9a878b91e8282dd695e1fde682a2d606dc1ae8'

  url "https://www.fractalaudio.com/downloads/FM3-Edit/FM3-Edit-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/fm3-edit/'
  name 'FM3 Edit'
  homepage 'https://www.fractalaudio.com/fm3-edit/'

  app 'FM3-Edit.app'

  zap trash: '~/Library/Application Support/Fractal Audio/FM3-Edit'
end
