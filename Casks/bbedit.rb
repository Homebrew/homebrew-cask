cask :v1 => 'bbedit' do
  version '11.1.4'
  sha256 '9e14bcafaa2f1e9900a9826e2d51c194e530641b6fd5f55334444531736f68df'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          :sha256 => '0df9fc5086947750527f20acccce1fe4d5991fa7444c54b7e4c832f11885226e'
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'

  postflight do
    suppress_move_to_applications
  end
end
