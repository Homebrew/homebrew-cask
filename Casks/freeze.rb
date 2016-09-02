cask 'freeze' do
  version '2.5'
  sha256 'c16ead5c0a3a10e4b122e737dacb7904369439bc8a7631429ba105990cd59aec'

  url 'https://www.freezeapp.net/download/Freeze.zip'
  appcast 'https://www.freezeapp.net/appcast.xml',
          checkpoint: 'aa42cf60843049fd12a6689715c166d2507c1a6f940bc8b97d7673f6c0a663e3'
  name 'Freeze'
  homepage 'https://www.freezeapp.net/'
  license :freemium

  app 'Freeze.app'
end
