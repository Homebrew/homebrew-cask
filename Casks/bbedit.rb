cask 'bbedit' do
  version '11.6.1'
  sha256 'aa881cc8afc3006acee8ebab9d22feb011844a15b1aeb717587cf9d9c33aff0e'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: '25a635ee2d2a6c67de7bd49b2341106c4480c0ef8399aa4f158df1aaef3dd25c'
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'

  postflight do
    suppress_move_to_applications
  end
end
