cask 'bbedit' do
  version '11.5.1'
  sha256 '348fcbe39f1d35bb54db649cddfab4ed5bc1ee734b7a5bfb85c61f0f410f4224'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: 'ade9d68d48f4d024416457a346fdbd109c584c50a096e6dc1fe74c6a41ef65b6'
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'

  postflight do
    suppress_move_to_applications
  end
end
