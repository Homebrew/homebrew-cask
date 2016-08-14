cask 'freeze' do
  version '2.5'
  sha256 '14476c67493930a77f8cd807d8be9707df551b3acf18a85a0dddc41e470d9fa0'

  url 'https://www.freezeapp.net/download/Freeze.zip'
  appcast 'https://www.freezeapp.net/appcast.xml',
          checkpoint: 'aa42cf60843049fd12a6689715c166d2507c1a6f940bc8b97d7673f6c0a663e3'
  name 'Freeze'
  homepage 'https://www.freezeapp.net/'
  license :freemium

  app 'Freeze.app'
end
