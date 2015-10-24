cask :v1 => 'bbedit' do
  version '11.1.3'
  sha256 '65279bddce6fb78573f891ec4df2b8d71eb43346d37ff41a5144e03b67ec37ad'

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
