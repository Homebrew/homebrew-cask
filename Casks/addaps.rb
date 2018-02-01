cask 'addaps' do
  version '0.4.38'
  sha256 'e1b29370d68483703d236964592cedea8b1f95eee354245887d52e7904d3bd37'

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
