cask :v1 => 'bbedit' do
  version '11.1.2'
  sha256 '3b9163eb1cf3dc46897473d8a72711fe2d04413b920e84972b326fa8931f5581'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          :sha256 => '6643066a1e2f009353024877cc81e4ba93bf353d72aa6e2b8facd5f1053cf7e2'
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'

  postflight do
    suppress_move_to_applications
  end
end
