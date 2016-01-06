cask 'bbedit' do
  version '11.1.4'
  sha256 '9e14bcafaa2f1e9900a9826e2d51c194e530641b6fd5f55334444531736f68df'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          :sha256 => '88b54b659c695bb4c4a5b185f8d06414e45ed2407f76d04623e201a98cb86fe7'
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'

  postflight do
    suppress_move_to_applications
  end
end
