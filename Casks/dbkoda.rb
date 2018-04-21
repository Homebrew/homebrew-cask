cask 'dbkoda' do
  version :latest
  sha256 :no_check

  # s3-us-west-1.amazonaws.com/uswest-nc.release.dbkoda was verified as official when first introduced to the cask
  url 'https://s3-us-west-1.amazonaws.com/uswest-nc.release.dbkoda/dbkoda-latest.dmg'
  name 'dbKoda'
  homepage 'https://www.dbkoda.com/'

  app 'dbKoda.app'

  zap trash: [
               '~/Library/Application Support/dbKoda',
               '~/Library/Logs/dbKoda',
               '~/Library/Preferences/com.southbanksoftware.dbkoda.helper.plist',
               '~/Library/Preferences/com.southbanksoftware.dbkoda.plist',
               '~/Library/Saved Application State/com.southbanksoftware.dbkoda.savedState',
               '~/.dbKoda',
             ]
end
