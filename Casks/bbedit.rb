cask :v1 => 'bbedit' do
  version '11.1'
  sha256 '38e239252e90b787d257b6257dcce13f14f346fb860bf6fb38a20f2698f86855'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          :sha256 => 'd1daa1c906105189b0ef3a7cccd4bbabd6d7f6b48341f95fdb711491555679d8'
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'
end
