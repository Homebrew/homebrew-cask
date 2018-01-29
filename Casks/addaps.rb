cask 'addaps' do
  version '0.4.31'
  sha256 '8feddc813f8006bd588b40077ce2548087141a1fda4e34e23419496202298788'

  # s3.amazonaws.com/addaps-beta was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/addaps-beta/Addap's+beta-#{version}-mac.zip"
  name 'Addap\'s'
  homepage 'https://www.addaps.com/'

  app 'Addap\'s beta.app'

  zap trash: [
               '~/Library/Application Support/Addap\'s',
               '~/Library/Application Support/Addap\'s beta',
               '~/Library/Logs/Addap\'s beta',
               '~/Library/Preferences/com.electron.addaps.helper.plist',
               '~/Library/Preferences/com.electron.addaps.plist',
               '~/Library/Saved Application State/com.electron.addaps.savedState',
             ]
end
