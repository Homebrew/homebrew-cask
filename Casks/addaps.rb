cask 'addaps' do
  version '0.4.35'
  sha256 '7df02435da9647849e7d3cb3040a4be4a19eb3271c29f868c356ec3c7db3fa3b'

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
