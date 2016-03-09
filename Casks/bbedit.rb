cask 'bbedit' do
  version '11.5'
  sha256 'ea8924e8a275a2c6ef19937d0874f0be5ac932a2a56718217a84b0c711bf8d12'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: '38540ae3740f30447d6470ba25669380229a56f1d663720ba21641162d88dad7'
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'

  postflight do
    suppress_move_to_applications
  end
end
