cask 'bbedit' do
  version '11.6.7'
  sha256 'cd9dfd6513269f9f46a8031e713513a3590ae04330bcb049946b72c174bc2137'

  # s3.amazonaws.com/BBSW-download was verified as official when first introduced to the cask
  url "http://s3.amazonaws.com/BBSW-download/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: '3c23672214dcfd8680b996f09aa6824218973e7c3ae69afa9824b054a2042b88'
  name 'BBEdit'
  homepage 'https://www.barebones.com/products/bbedit/'

  depends_on macos: '>= :mavericks'

  app 'BBEdit.app'
end
