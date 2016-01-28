cask 'bbedit' do
  version '11.5'
  sha256 'ea8924e8a275a2c6ef19937d0874f0be5ac932a2a56718217a84b0c711bf8d12'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: '0f2cd59a1b9307d7b8eb2a758ca788f10c7682b9a9e9b45fa4f0b539e13b28ad'
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'

  postflight do
    suppress_move_to_applications
  end
end
