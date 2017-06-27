cask 'bbedit' do
  version '11.6.7'
  sha256 'cd9dfd6513269f9f46a8031e713513a3590ae04330bcb049946b72c174bc2137'

  # s3.amazonaws.com/BBSW-download was verified as official when first introduced to the cask
  url "http://s3.amazonaws.com/BBSW-download/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: 'a6fcea1acefa6b99c3d85a60db86a57afb924d0e3b9d94bf87a2589dfeb7c9a8'
  name 'BBEdit'
  homepage 'https://www.barebones.com/products/bbedit/'

  depends_on macos: '>= :mavericks'

  app 'BBEdit.app'
end
