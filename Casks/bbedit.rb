cask 'bbedit' do
  version '11.6.8'
  sha256 'aa4a9f8ed12206dbf1d9e61c213be02789b87f963d8171743a3a057bfd1ede2a'

  # s3.amazonaws.com/BBSW-download was verified as official when first introduced to the cask
  url "http://s3.amazonaws.com/BBSW-download/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: 'af09663ee3641443bcd868e6616d26aa7b791241195361f69bedd0656501573c'
  name 'BBEdit'
  homepage 'https://www.barebones.com/products/bbedit/'

  depends_on macos: '>= :mavericks'

  app 'BBEdit.app'
end
