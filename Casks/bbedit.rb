cask 'bbedit' do
  version '11.5.2'
  sha256 '41c517dcd165a857a33000ac197e981a199a79b38adf0da96fa590be2323ec56'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: 'fd569974044182560354fe531299b105c0e65e30d02da1753399497dab4b34c6'
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'

  postflight do
    suppress_move_to_applications
  end
end
