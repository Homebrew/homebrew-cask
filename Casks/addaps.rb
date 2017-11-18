cask 'addaps' do
  version '0.4.29'
  sha256 'f3b4dc1d002b0ce5b39be3e27aac11516172bbc984970560494b10295c102f46'

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
