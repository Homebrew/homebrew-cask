cask :v1 => 'bbedit' do
  version '11.1.1'
  sha256 '96f3657241056b781be4c6531a38080db30a95980e049ad5f4a15a6922a99327'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          :sha256 => 'd1daa1c906105189b0ef3a7cccd4bbabd6d7f6b48341f95fdb711491555679d8'
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'
end
