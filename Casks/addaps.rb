cask 'addaps' do
  version '0.5.0'
  sha256 '83d93b13d42aed02627e1fc8178c0e9701f4c0b94c5528fb8bf0274a1819e557'

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
